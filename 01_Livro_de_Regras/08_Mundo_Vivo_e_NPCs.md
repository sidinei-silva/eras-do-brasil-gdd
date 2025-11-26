# 🌍 Capítulo 8 – Mestres, Campanhas e Mundo Vivo

Este capítulo é dedicado aos mestres e ao sistema de "Mundo Vivo", que é um dos pilares centrais do jogo. Ele detalha como o mundo reage, como os NPCs pensam e como o tempo (Ticks) afeta a simulação.

---

## 8.1 – O Papel do Mestre no Mundo Vivo

O mestre, em *Eras do Brasil*, não é apenas o narrador dos eventos — é o **guardião da Raiz do Mundo**, responsável por gerenciar o equilíbrio entre narrativa, desafios, evolução do mundo e escolhas dos jogadores.

Diferente de muitos sistemas clássicos, aqui o mestre não controla um universo estático, mas sim um **mundo vivo, dinâmico e em constante transformação**, onde:
- **NPCs possuem rotinas, desejos, vínculos e conhecimento próprio.**
- **O mundo se move mesmo sem a presença dos jogadores.**
- **Eventos acontecem em ciclos temporais (ticks), afetando regiões, recursos, mercados, facções e relações.**

O mestre deve equilibrar três pilares:
1.  **Simulação:** garantir que o mundo viva e evolua.
2.  **Narrativa:** tecer histórias envolventes.
3.  **Jogabilidade:** assegurar que desafios e recompensas estejam calibrados.

---

## 8.2 – Arquitetura de Ticks, Blocos e Ciclos

(Conteúdo fundido do original 8.2 e das novas regras de Ticks)

O mundo é construído sobre uma lógica de **Blocos de Cenário** (cap. 5.2) e regido por **Ticks**.

### Arquitetura do "Tick Comutável" (Offline vs. Online)
O motor do mundo de *Eras do Brasil* é o "Tick". Um Tick é a unidade fundamental de avanço do tempo. Toda a arquitetura de simulação é construída sobre um "Motor" de lógica (`Mundo.ProcessarTick()`) que é separado de seu "Gatilho".

* **Gatilho Offline (Reativo):** Para as Fases 1 e 3 (Offline / RPG de Mesa), o mundo é reativo. O "Motor" do Tick só é disparado quando o jogador realiza uma ação significativa, como `OnPlayerAction_Move` (mover-se entre blocos de cenário). O mundo espera pelo jogador.
* **Gatilho Online (Proativo):** Para as Fases de Mundo Persistente (Online), o mundo é proativo. O "Motor" do Tick é disparado por um relógio global no servidor (ex: `setInterval` a cada 1 ou 5 minutos), independentemente das ações do jogador. O mundo avança sozinho.

### Ciclos Temporais
Ticks fazem parte de ciclos maiores, que podem ser:
- **Ciclos Diurnos:** manhã, tarde, noite, madrugada.
- **Ciclos Semanais:** dias de feira, rituais.
- **Ciclos Sazonais:** estações que alteram recursos e clima.
- **Ciclos Espirituais:** fases da lua, rupturas da Raiz.

A cada Tick, o mundo atualiza:
- Movimentação de NPCs.
- Regeneração ou esgotamento de recursos.
- Ativação de eventos.
- Progresso de facções.

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
A cada Tick Global, o cérebro de cada NPC (Utility AI) roda o seguinte processo:

1.  **Fase 1 (Passivo):** Atualiza todas as `Needs` (Fome +1, Energia -1) e recalcula o `Humor` total.
2.  **Fase 2 (Decisão):** O NPC avalia todas as suas "Metas" (Trabalhar, Comer, Dormir, Socializar) e atribui uma prioridade a cada uma.
    * `Prioridade_Fome = npc.fome` (ex: 70)
    * `Prioridade_Trabalho = npc.agenda.GetPriority()` (ex: 50)
3.  **Fase 3 (Ação):** O NPC escolhe e executa a Ação que satisfaz a Meta de **maior prioridade**.
    * *Exemplo:* Se a `Prioridade_Fome` (70) for maior que a `Prioridade_Trabalho` (50), o Ferreiro "quebra" sua rotina de Agenda e decide ir à taverna para comer.

### Percepção Cognitiva (`knowledgeBase`)
(Conteúdo original 8.3 e novo 8.4 fundidos)

Cada NPC possui uma "Base de Conhecimento" (`knowledgeBase`) onde armazena informações que *vê* durante suas rotinas:
* **Recursos:** `{"tipo": "RECURSO", "id": "minerio_ferro_01", "local": "bloco_mina", "ultimo_visto": 12340}`
* **Monstros:** `{"tipo": "ENTIDADE", "id": "lobo_alfa", "local": "floresta_norte", "ultimo_visto": 12300}`
* **Rotinas de NPCs:** `{"tipo": "ROTINA_NPC", "id": "npc_guarda", "info": "Vai para a taverna ao meio-dia"}`
* As informações possuem um "prazo de validade" (baseado no `ultimo_visto`) e são "esquecidas" após um tempo.

### Relacionamentos (NPC <=> NPC) e "Fofoca"
NPCs rastreiam seu nível de amizade/inimizade com *outros NPCs* e com os jogadores.

Quando as rotinas de dois NPCs (baseadas no Tick) fazem com que eles se encontrem no mesmo bloco (ex: Ferreiro e Guarda na Taverna), o sistema de "Fofoca" é ativado:
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

(Conteúdo novo da Auditoria Gemini)

No modo online, o Tick Global proativo impulsiona os sistemas de simulação do servidor:

### StoryManager (O Calendário de Eventos)
O `StoryManager` funciona como um "Calendário de Eventos do Mundo". A história principal, eventos sazonais e invasões de facções avançam com o Tick Global, não com o progresso do jogador. Um novo jogador que entra no servidor pode encontrar o mundo em um estado "Pós-Guerra", ouvindo apenas histórias sobre os jogadores que lutaram na batalha.

### Sistema de Missões "Corrida pela Recompensa"
Para se alinhar ao mundo persistente, as missões de NPCs seguem um modelo de "competição":

1.  **Anúncio:** Um NPC anuncia um problema (ex: "Preciso de 10 Peles de Lobo").
2.  **Múltiplos Aceites:** Vários jogadores (ou grupos) podem aceitar a missão.
3.  **Primeiro a Concluir:** A recompensa é entregue ao *primeiro jogador* que retornar com os itens. O NPC informará aos outros que "o problema já foi resolvido por outro aventureiro".
4.  **Expiração:** A missão tem um prazo de validade baseado no Tick Global (ex: "Preciso das peles antes de 3 dias"). Se ninguém completar, a missão falha para todos e o mundo reage (ex: o NPC fica sem estoque).

---

## 8.8 – Dinâmica de Eventos Globais e Consequências (Meta-Eventos)

Em *Eras do Brasil*, as **Missões Principais** funcionam como gatilhos para mudanças de estado no mundo.

### 🏛️ Os 3 Estados de um Evento (Linha do Tempo)
1.  **Tensão (Pré-Evento):** Sinais visuais e missões de preparação.
2.  **Apogeu (O Evento):** O clímax (Batalha/Ritual).
3.  **Legado (Pós-Evento):** O mundo transformado pela consequência (Vitória ou Derrota).

### ⚖️ Decisão Coletiva (No Online)
No modo **Raiz (Online)**, o desfecho é decidido pela maioria. Se a comunidade falhar em entregar suprimentos a tempo, a vila queima para todos na próxima temporada.

### 🏅 Recompensas de Legado
* **Offline:** Você vê a consequência direta no seu save.
* **Online:** Jogadores recebem Títulos ("Veterano da Ruptura") que são reconhecidos por NPCs em futuras temporadas.

---

## 8.9 – Sincronia de Tempo no Modelo Híbrido

Devido à arquitetura de "Eco vs Raiz", o sistema de Ticks se comporta de duas formas distintas:

1.  **No Eco (Offline):** Ticks são **Locais e Reativos**.
    * `Game_Time += Player_Action_Cost`.
    * O mundo só avança quando o jogador age. NPCs simulam suas rotinas baseados nesse relógio local.
2.  **Na Raiz (Online/Expedição):** Ticks são **Sincronizados (Heartbeat)**.
    * `Game_Time` avança a cada X segundos reais (ex: 1 Tick = 5 segundos).
    * Isso garante que todos os jogadores na instância vejam o sol se pôr ou o Boss atacar ao mesmo tempo.

---

## 8.10 – Dinâmica Online: Turnos de Trabalho

No Modo Online (Raiz), para evitar que NPCs "sumam" quando o jogador precisa deles, utilizamos **Turnos Globais**:

1.  **Ciclo Acelerado:** O servidor roda um ciclo Dia/Noite.
2.  **Turnos de NPC:**
    * **Dia:** O Mestre Ferreiro atende na Forja (Qualidade Alta).
    * **Noite:** O Mestre vai para a Taverna. O **Aprendiz** assume a Forja (Qualidade Normal, Estoque Reduzido).
    * **Resultado:** O serviço nunca fecha (evitando punição ao jogador casual), mas o mundo respira e os NPCs têm vida.