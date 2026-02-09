# 🌍 Capítulo 8 – Mestres, Campanhas e Mundo Vivo

Este capítulo é dedicado aos mestres e ao sistema de "Mundo Vivo", que é um dos pilares centrais do jogo. Ele detalha como o mundo reage, como os NPCs pensam e como o tempo (Ticks) afeta a simulação.

---

## 8.1 – O Papel do Mestre no Mundo Vivo

O mestre, em *Eras do Brasil*, não é apenas o narrador dos eventos — é o **guardião da Raiz do Mundo**, responsável por gerenciar o equilíbrio entre narrativa, desafios, evolução do mundo e escolhas dos jogadores.

Diferente de muitos sistemas clássicos, aqui o mestre não controla um universo estático, mas sim um **mundo vivo, dinâmico e em constante transformação**, onde:
- **NPCs possuem rotinas, desejos, vínculos e conhecimento próprio.**
- **O mundo se move reagindo à presença dos jogadores.**
- **Eventos acontecem em ciclos temporais (ticks), afetando regiões, recursos, mercados, facções e relações.**

O mestre deve equilibrar três pilares:
1.  **Simulação:** garantir que o mundo viva e evolua.
2.  **Narrativa:** tecer histórias envolventes.
3.  **Jogabilidade:** assegurar que desafios e recompensas estejam calibrados.

---

## 8.2 – Arquitetura de Ticks e Fila de Ações

O mundo é regido por **Ticks** (unidade de tempo) e processado através de uma **Fila de Ações (Action Queue)**.

### Arquitetura do "Tick de Fila" (Multiplayer Assíncrono)
Para permitir que jogadores realizem ações de durações diferentes (ex: um viaja por 10 ticks, o outro combate por 5), o sistema utiliza uma lógica de **Débito de Tempo**:

1.  **O Débito:** Quando um jogador realiza uma ação longa (viajar, craftar), ele acumula "Débito de Ticks" e entra em estado de espera.
2.  **A Resolução:** O servidor (Host) processa as ações do jogador com *menor* débito até que ele alcance o tempo do outro.
3.  **Sincronia:** O relógio do mundo (Dia/Noite/NPCs) avança conforme o "Maior Débito Comum" é pago.

Isso impede que um jogador que está apenas andando na praça (1 tick) tenha que esperar 10 minutos reais enquanto o outro viaja pelo mapa.

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

## 8.7 – Dinâmica de Tempo: Fila e Bolha

Em *Eras do Brasil*, o tempo é um recurso tático geranciado individualmente, mas sincronizado globalmente.

### 1. Modo Solo (Fluxo Direto)
O mundo reage imediatamente. Se você gasta 5 Ticks viajando, os NPCs movem 5 passos instantaneamente.

### 2. Modo Cooperativo (Fluxo de Fila)
O tempo opera em **Sincronia Flexível**:
* **Jogador A** decide viajar para a Floresta (Custo: 5 Ticks). Ele fica "Ocupado/Viajando".
* **Jogador B** está na Vila. Ele tem 5 Ticks de "Tempo Livre" para gastar (comprar, falar, craftar rápido) antes de alcançar o tempo do Jogador A.
* **Convergência:** Se o Jogador B também viajar para a Floresta (5 Ticks), ambos chegam juntos e o tempo sincroniza.

### 3. A Bolha de Combate
Quando um combate inicia, ele gera Ticks para a Fila:
* **1 Rodada de Combate = 1 Tick de Débito.**
* Se o Jogador A está lutando (gastando 1 tick por rodada), o Jogador B (que está fora da luta) pode assistir ou realizar ações curtas de 1 tick ao redor da área de combate, mantendo o fluxo dinâmico.

---

## 8.8 – O Papel dos Despertos (Dinâmica Cooperativa)

Para evitar conflitos de narrativa e garantir a integridade do save, definimos papéis claros:

* **O Anfitrião (Dono do Eco):** É a âncora da realidade. Ele tem a palavra final em diálogos de missão e escolhas morais que alteram o mundo permanentemente (pois o save é dele).
* **O Viajante (Aliado):** É um suporte de luxo e companheiro de armas. Ele pode interagir com lojas, coletar recursos e lutar livremente, mas em diálogos cruciais da história, ele atua como conselheiro (pode sugerir opções, mas a decisão final é do Anfitrião).