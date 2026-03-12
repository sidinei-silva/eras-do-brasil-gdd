# 🌍 Capítulo 8 – Mundo Vivo, NPCs e Servidor

Este capítulo é dedicado ao sistema de "Mundo Vivo", que é o **pilar central** do jogo. Ele detalha como o servidor simula o mundo, como os NPCs pensam, como o tempo (Ticks) afeta a simulação e como múltiplos jogadores coexistem no mesmo mundo persistente.

---

## 8.1 – O Mundo Persistente

*Eras do Brasil* é um **mundo persistente online**. O servidor roda 24/7, simulando NPCs, economia, clima, facções e eventos — independentemente de haver jogadores conectados.

- **NPCs possuem rotinas, desejos, vínculos e conhecimento próprio.**
- **O mundo se move mesmo sem a presença dos jogadores.** Um novo jogador que entra pode encontrar o mundo em estado "Pós-Guerra", ouvindo apenas histórias sobre quem lutou na batalha.
- **Eventos acontecem em ciclos temporais (ticks), afetando regiões, recursos, mercados, facções e relações.**

Os três pilares do Mundo Vivo:
1.  **Simulação:** O servidor garante que o mundo viva e evolua a cada tick.
2.  **Narrativa:** Eventos globais tecem histórias que emergem das ações coletivas dos jogadores.
3.  **Jogabilidade:** Desafios e recompensas se calibram dinamicamente pela economia e pela IA.

---

## 8.2 – Arquitetura de Ticks, Blocos e Ciclos

O mundo é construído sobre uma lógica de **Blocos de Cenário** (cap. 5.2) e regido por **Ticks**.

### Arquitetura do "Tick Comutável" (Offline vs. Online)
O motor do mundo de *Eras do Brasil* é o "Tick". Um Tick é a unidade fundamental de avanço do tempo. Toda a arquitetura de simulação é construída sobre um "Motor" de lógica (`Mundo.ProcessarTick()`) que é **separado de seu "Gatilho"**.

* **Gatilho Offline (Reativo):** Para testes locais e desenvolvimento, o mundo é reativo. O "Motor" do Tick só é disparado manualmente ou por ação do jogador. Útil para debug e validação.
* **Gatilho Online (Proativo):** No servidor de produção, o mundo é proativo. O "Motor" do Tick é disparado por um relógio global (ex: goroutine com `time.Ticker` a cada X segundos), independentemente das ações dos jogadores. O mundo avança sozinho.

```
// O "Motor" do Tick — reutilizável em ambos os modos
Mundo.ProcessarTick():
  TimeManager.AvancarTempo(1)
  NPCManager.AtualizarAgendas()
  QuestManager.VerificarPrazos()
  StoryManager.VerificarEventosAgendados()
  Mundo.SalvarEstado()
```

### Ciclos Temporais
Ticks fazem parte de ciclos maiores, que podem ser:
- **Ciclos Diurnos:** manhã, tarde, noite, madrugada.
- **Ciclos Semanais:** feiras, rituais, migrações.
- **Ciclos Sazonais:** estações que alteram recursos e clima.
- **Ciclos Espirituais:** fases da lua, rupturas da Raiz.

A cada Tick, o mundo atualiza:
- Movimentação de NPCs.
- Regeneração ou esgotamento de recursos.
- Ativação de eventos.
- Progresso de missões com prazo.
- Relações de facções e economia.

---

## 8.3 – O Sistema de IA de NPCs (Fusão de Modelos)

(Conteúdo fundido do original 8.3 e das novas regras de IA)

Os NPCs em *Eras do Brasil* são entidades vivas. O sistema é uma fusão de dois modelos: "Agendas" (rotinas fixas, como *Stardew Valley* ou *KCD*) e "Necessidades" (IA baseada em prioridades, como *Dwarf Fortress* ou *RimWorld*).

Cada NPC possui um `NPC_Data` com os seguintes componentes:

* **`Needs` (Necessidades):** Um conjunto de estatísticas que decaem a cada Tick (ex: Fome, Sede, Energia/Sono, Social, Segurança).
* **`Traits` (Traços):** Modificadores passivos que afetam o decaimento das necessidades ou a tomada de decisão (ex: Gula, Preguiçoso, Ranzinza, Valente).
* **`Mood & Thoughts` (Humor e Memórias):** O Humor do NPC é o resultado direto de suas Necessidades não atendidas e de "Memórias" recentes (ex: "Comeu bem", "Foi insultado", "Amigo morreu").
* **`Agenda`:** A rotina de trabalho padrão do NPC (ex: "08:00 - Ir para a Forja").

### O Fluxo de Decisão do NPC (`OnTick` - Utility AI)
A cada Tick Global processado, o cérebro de cada NPC roda o seguinte processo:

1.  **Fase 1 (Passivo):** Atualiza todas as `Needs` (Fome +1, Energia -1) e recalcula o `Humor` total.
2.  **Fase 2 (Decisão):** O NPC avalia todas as suas "Metas" (Trabalhar, Comer, Dormir, Socializar) e atribui uma prioridade a cada uma.
    * `Prioridade_Fome = npc.fome` (ex: 70)
    * `Prioridade_Trabalho = npc.agenda.GetPriority()` (ex: 50)
3.  **Fase 3 (Ação):** O NPC escolhe e executa a Ação que satisfaz a Meta de **maior prioridade**.
    * *Exemplo:* Se a `Prioridade_Fome` (70) for maior que a `Prioridade_Trabalho` (50), o Ferreiro "quebra" sua rotina de Agenda e decide ir à taverna para comer.

### Percepção Cognitiva (`knowledgeBase`)
Cada NPC possui uma "Base de Conhecimento" (`knowledgeBase`) onde armazena informações que *vê* durante suas rotinas:
* **Recursos:** Onde viu minérios ou ervas.
`{"tipo": "RECURSO", "id": "minerio_ferro_01", "local": "bloco_mina", "ultimo_visto": 12340}`
* **Monstros:** Onde viu perigos.
`{"tipo": "ENTIDADE", "id": "lobo_alfa", "local": "floresta_norte", "ultimo_visto": 12300}`
* **Rotinas:** Onde viu outros NPCs.
`{"tipo": "ROTINA_NPC", "id": "npc_guarda", "info": "Vai para a taverna ao meio-dia"}`
* As informações possuem um "prazo de validade" (baseado no `ultimo_visto`) e são "esquecidas" após um tempo.

### Expiração e Esquecimento da Memória
A cada processamento de Tick Global, o `NPCManager` varre a `knowledgeBase` de cada NPC e **remove entradas expiradas**, garantindo que as informações sejam recentes e o mundo permaneça dinâmico.

* **Regra:** Uma entrada é removida quando `(TickAtual - ultimo_visto) > Limite_de_Memória`.
* **Limite padrão sugerido:** 500 Ticks (equivalente a aproximadamente 2 dias de jogo).
* **Exceções:** Informações marcadas como "Importante" (ex: morte de um NPC, evento de ruptura) podem ter limite estendido ou ser permanentes.
* **Impacto:** Isso significa que um NPC não vai falar sobre um recurso que viu há 3 dias — a informação já expirou. O jogador precisa buscar fontes recentes.

### Relacionamentos (NPC <=> NPC) e "Fofoca"
NPCs rastreiam seu nível de amizade/inimizade com *outros NPCs* e com os jogadores.

Quando as rotinas de dois NPCs (baseadas no Tick) fazem com que eles se encontrem no mesmo bloco (ex: Ferreiro e Guarda na Taverna), o sistema de "Fofoca" é ativado, permitindo que troquem informações de sua `knowledgeBase`.
1.  Os NPCs trocam 1-2 itens de suas `knowledgeBase`.
2.  Eles atualizam seus `Relacionamentos` (ex: "Falar com o Ferreiro aumentou minha amizade com ele").

### Acesso do Jogador (Interação)
O jogador acessa essa rede de informação dinâmica ao conversar com o NPC. O que o NPC sabe (e se ele decide contar) depende de:
1.  **Afinidade:** O NPC gosta de você?
2.  **`knowledgeBase`:** O NPC *realmente viu* o que você está perguntando? (Ex: "Sim, eu vi minério de ferro na mina esta manhã.")
3.  **"Fofoca":** O NPC *ouviu falar* de outro NPC? (Ex: "Eu não vi, mas o Guarda me contou que viu lobos na floresta norte.").

---

## 8.4 – Facções, Influência e Progresso Global

(Conteúdo original do Cap 8.4 do `Livro de Regras.md`)

As **facções** representam grupos organizados que moldam a política, a espiritualidade, o comércio e os conflitos em *Eras do Brasil*. Cada facção possui **interesses, ideologias, territórios, NPCs afiliados e objetivos próprios**.

### 🏛️ O Que é uma Facção?
Uma facção é uma entidade social, cultural, espiritual, militar ou econômica composta por:
* NPCs organizados com funções, hierarquias e rotinas
* Crenças, objetivos e rivalidades
* Territórios ou áreas de influência
* Relações diplomáticas (amizade, rivalidade ou neutralidade)

### 🎯 Influência e Reputação com Facções
Cada jogador ou grupo possui uma **Reputação** com cada facção, que varia de:

| Nível de Reputação | Descrição                       | Efeito Prático                             |
|--------------------|----------------------------------|---------------------------------------------|
| 🟥 Inimigo          | Odiado, caçado, alvo            | NPCs atacam, bloqueiam acesso, emboscadas  |
| 🟧 Desfavorável     | Desconfiado, mal visto          | Preços mais altos, missões fechadas        |
| 🟨 Neutro           | Desconhecido ou irrelevante     | Acesso básico, sem benefícios ou punições  |
| 🟦 Respeitado       | Conhecido, prestigiado          | Descontos, acesso a missões ou rituais     |
| 🟩 Aliado           | Integrado, protegido, líder     | Acesso total a recursos, proteção e segredos |

As ações de um jogador podem **aumentar ou diminuir reputação** com uma ou mais facções ao mesmo tempo.

---

## 8.5 – Eventos Globais, Rumores e Ciclo do Mundo

(Conteúdo original do Cap 8.5 do `Livro de Regras.md`)

O mundo de *Eras do Brasil* não é estático. Ele pulsa, respira e reage a tudo que acontece.

### 🌪️ Eventos Globais
São acontecimentos que possuem **impacto coletivo e permanente (ou semi-permanente)** no mundo.

| Tipo de Evento        | Exemplos                                              |
|-----------------------|-------------------------------------------------------|
| Espirituais           | Ruptura de Véus, Enfraquecimento da Raiz, Eclipse Ancestral |
| Políticos/Sociais     | Queda de uma facção, fundação de uma vila, guerra civil |
| Ambientais            | Chegada de estação seca severa, praga mágica, floresta corrompida |

### 🌓 Ciclo do Mundo
O mundo de *Eras do Brasil* é regido por ciclos que afetam:
* Eventos espirituais
* Fauna e flora
* Presença de monstros
* Poder de magias, rituais e itens

---

## 8.6 – Companheiros e Personagens Secundários

(Conteúdo original do Cap 8.6 do `Livro de Regras.md`)

Os jogadores podem interagir com **companheiros, mercenários, aliados e personagens secundários**.

### 🤝 Companheiros e Seguidores
Jogadores podem recrutar **companheiros temporários ou permanentes**:

| Tipo             | Função                                  |
|------------------|-----------------------------------------|
| 🛡️ Mercenários    | Auxílio em combate, pagos por diária   |
| 🔥 Aliados de Facção | Suporte específico, bônus narrativos |
| 🧙 NPCs Rituais    | Ajudam em magias, rituais e cura       |
| 🐺 Criaturas      | Companheiros mágicos, animais ou espirituais |

#### 🎯 Regras Gerais para Companheiros
* **Ação em Combate:** Podem agir no combate, com ficha simplificada.
* **Requisitos:** Exigem pagamento, manutenção de afinidade ou cumprimento de missões.
* **Risco de Perda:** Podem ir embora se a afinidade cair muito ou se seus objetivos entrarem em conflito.

### ❤️ Sistema de Afinidade (Detalhado)
A "Afinidade" (relacionamento) que um NPC sente pelo jogador é uma mecânica central. Ela é modificada por ações diretas:

| Ação                                | Efeito na Afinidade |
|--------------------------------------|----------------------|
| Presentear com item valioso          | +2                   |
| Ajudar em missão                     | +1 a +3              |
| Faltar com compromisso               | –2                   |
| Ofender, mentir ou trair             | –3 ou mais           |
| Salvar em combate crítico            | +3                   |
| Pertencer à mesma facção             | +1 (Bônus passivo)   |

A afinidade gera:
* **Descontos** no comércio.
* **Acesso a informações exclusivas** (da `knowledgeBase` do NPC).
* **Ofertas de missões especiais**.
* **Apoio em combates ou rituais**.

### 🌳 Ciclo de Vida dos NPCs
NPCs não são eternos. Eles podem nascer, envelhecer e morrer (seja por eventos da história, ações do jogador ou causas naturais). A morte de um NPC importante é um **Evento Global** que pode gerar novas missões ou lacunas de poder.

---

## 8.7 – Arquitetura do Mundo Persistente (Online)

No modo online, o Tick Global proativo impulsiona todos os sistemas de simulação do servidor.

### StoryManager (O Calendário de Eventos do Mundo)
O `StoryManager` funciona como um "Calendário de Eventos do Mundo". A história principal, eventos sazonais e invasões de facções avançam com o Tick Global, não com o progresso de um jogador individual.

Um novo jogador que entra no servidor pode encontrar o mundo em um estado diferente do inicial — ouvindo apenas histórias sobre os jogadores que lutaram na batalha anterior.

**Branching de Timeline:**
```
Tick Global 10.000 → Evento "Invasão" começa
  → NPCs em pânico, novos inimigos no mapa
  → Missão Mundial criada: "Derrote o Rei Goblin" (prazo: Tick 15.000)

Cenário A: Jogadores vencem no Tick 12.500
  → StoryManager avança para "Era da Reconstrução"

Cenário B: Tick 15.000 chega sem resolução
  → StoryManager avança para "Era da Ocupação"
  → Mapa muda para todos
```

### Sistema de Missões "Corrida pela Recompensa"
Para se alinhar ao mundo persistente, as missões de NPCs seguem um modelo de **competição**:

1.  **Anúncio:** Um NPC anuncia um problema (ex: "Preciso de 10 Peles de Lobo").
2.  **Múltiplos Aceites:** Vários jogadores (ou grupos) podem aceitar a missão.
3.  **Primeiro a Concluir:** A recompensa é entregue ao *primeiro jogador* que retornar com os itens. O NPC informará aos outros que "o problema já foi resolvido por outro aventureiro".
4.  **Expiração:** A missão tem um prazo de validade baseado no Tick Global (ex: "Preciso das peles antes de 3 dias"). Se ninguém completar, a missão falha para todos e o mundo reage (ex: o NPC fica sem estoque).

### Quadro de Missões (BountyManager) — Metas Coletivas
Sistema de contribuição comunitária onde jogadores contribuem individualmente para metas globais:

* Uma cidade precisa de 100 couros para construir uma muralha.
* Cada jogador contribui com até 10 couros.
* Ao atingir thresholds (25%, 50%, 75%, 100%), recompensas são liberadas para todos que contribuíram.
* Se o prazo expirar sem completar, a cidade sofre as consequências (invasão, escassez).

---

## 8.8 – Dinâmica de Eventos Globais e Consequências (Meta-Eventos)

Em *Eras do Brasil*, as **Missões Principais** funcionam como gatilhos para mudanças de estado no mundo.

### Os 3 Estados de um Evento (Linha do Tempo)
1.  **Tensão (Pré-Evento):** Sinais visuais e missões de preparação.
2.  **Apogeu (O Evento):** O clímax (Batalha/Ritual).
3.  **Legado (Pós-Evento):** O mundo transformado pela consequência (Vitória ou Derrota).

### Decisão Coletiva
O desfecho é decidido pela ação (ou inação) da comunidade. Se os jogadores falharem em entregar suprimentos a tempo, a vila queima para todos na próxima temporada.

### Recompensas de Legado
* Jogadores recebem Títulos ("Veterano da Ruptura") que são reconhecidos por NPCs em futuras temporadas.
* Estruturas construídas ou destruídas persistem no mundo.
* NPCs lembram e referenciam eventos passados em diálogos.

---

## 8.9 – Sincronia de Tempo e Dinâmica Online

### Tick Global Proativo
O servidor roda um ciclo contínuo:
* `Game_Time` avança a cada X segundos reais (ex: 1 Tick = 5 segundos).
* Isso garante que todos os jogadores conectados vejam o sol se pôr ou o Boss atacar ao mesmo tempo.
* NPCs seguem rotinas baseadas neste relógio global.

### Turnos de Trabalho dos NPCs
Para evitar que NPCs "sumam" quando o jogador precisa deles, utilizamos **Turnos Globais**:

1.  **Ciclo Acelerado:** O servidor roda um ciclo Dia/Noite.
2.  **Turnos de NPC:**
    * **Dia:** O Mestre Ferreiro atende na Forja (Qualidade Alta).
    * **Noite:** O Mestre vai para a Taverna. O **Aprendiz** assume a Forja (Qualidade Normal, Estoque Reduzido).
    * **Resultado:** O serviço nunca fecha (evitando punição ao jogador casual), mas o mundo respira e os NPCs têm vida.

### Bolha de Combate
Quando um jogador entra em combate:
* O combate é resolvido em **turnos táticos** (Iniciativa), isolado do tick global.
* O mundo continua avançando ao redor — outros jogadores não são pausados.
* Ao final do combate, o sistema calcula a duração da luta e aplica os ticks equivalentes ao jogador.

---

## 8.10 – Full Loot e Economia de Risco

### Regra: Morte = Perda
Ao morrer, o jogador **perde todos os itens equipados e no inventário**, que caem no local da morte como loot acessível a qualquer jogador ou NPC.

### Mitigações
* **Baú Seguro:** Cada jogador tem um baú limitado em cidades aliadas onde pode guardar itens. Esses itens são protegidos.
* **Seguro de Facção:** Facções aliadas podem oferecer "seguro" — ao morrer, parte dos itens vai para o cofre da facção em vez de dropar.
* **Espírito de Retorno:** Ao morrer, o jogador tem X ticks para voltar ao local e recuperar seus itens antes que outros os peguem ou que NPCs os recolham.
* **Itens Soulbound:** Itens lendários ou de missão podem ser marcados como "vinculados à alma" — não dropam na morte.

### Inimigos Evolutivos
* Inimigos que derrotam um jogador **ganham XP** e podem reaparecer como líderes mais poderosos.
* Se um lobo mata 3 jogadores, ele se torna um "Alfa" com stats aumentados e loot melhor.
* Isso cria uma ecologia emergente onde a morte tem consequências narrativas.

---

## 8.11 – Relógio da Ruptura

O **Relógio da Ruptura** é um ciclo de ~500 ticks que governa transições de era e rupturas temporais no mundo.

* A cada ciclo completo, a Raiz do Mundo pulsa — eventos de ruptura podem disparar.
* Rupturas alteram geografias, abrem portais, corrompem regiões ou trazem criaturas de outras eras.
* NPCs sentem a aproximação da ruptura (mudanças de humor, diálogos de medo/excitação).
* Jogadores preparados podem **influenciar o tipo de ruptura** através de rituais coletivos.

---

## 8.12 – Arquitetura do Motor (Managers)

O servidor é estruturado como uma coleção de **Managers** que rodam a cada tick:

```
Motor (código reutilizável):
  TickManager       — Controla o relógio global e dispara ProcessarTick()
  NPCManager        — Atualiza agendas, needs, decisões de IA
  QuestManager      — Verifica prazos, missões competitivas, bounties
  StoryManager      — Calendário de eventos, branching de timeline
  InventoryManager  — Inventários, drops, full loot
  CombatManager     — Resolve combates em turno, aplica D20
  EventBus          — Pub/Sub desacoplado (OnItemCollected, OnNPCDied, etc.)

Conteúdo (dados do jogo, JSON):
  - NPCs e agendas
  - Items e receitas
  - Quests e objetivos
  - Habilidades e magias
  - Mapas e blocos de cenário

Cliente (interface):
  - HTML/CSS/JS via WebSocket
  - Renderiza texto e painéis de informação
  - Input do jogador (comandos de texto ou botões)
```

### EventBus (Arquitetura Event-Driven)
Os managers se comunicam via Pub/Sub desacoplado:

```
// Quando jogador coleta item:
EventBus.Publish("OnItemCollected", { id: "item_minerio_ferro", qtd: 1 })

// QuestManager escuta e atualiza objetivos automaticamente
// InventoryManager escuta e atualiza inventário
// NPCManager escuta e atualiza knowledgeBase de NPCs próximos
```
* **O Viajante (Aliado):** É um suporte de luxo e companheiro de armas. Ele pode interagir com lojas, coletar recursos e lutar livremente, mas em diálogos cruciais da história, ele atua como conselheiro (pode sugerir opções, mas a decisão final é do Anfitrião).