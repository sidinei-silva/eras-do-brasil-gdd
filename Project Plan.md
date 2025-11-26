# Plano de Projeto: Eras do Brasil (Estratégia Co-op P2P)

## 1.0 Visão e Estratégia Geral

Este documento delineia a visão fundamental para 'Eras do Brasil', detalhando o conceito de alto nível, a missão central e a estratégia de entrada no mercado.

'Eras do Brasil' é um RPG de fantasia histórica ambientado em uma versão mística do Brasil. Nossa missão principal é criar uma experiência imersiva que entrelace magistralmente a história e o folclore brasileiros com uma jogabilidade inovadora e estrategicamente gratificante.

A estratégia de desenvolvimento é **Iterativa "Tick-Tock"**: construímos a complexidade em camadas (Texto > Visual > Tático). Em cada camada, primeiro validamos a mecânica **Solo (Offline)** e imediatamente implementamos o suporte **Cooperativo (P2P)** antes de avançar para a próxima fase.

## 2.0 Definição do Produto e Escopo

### 2.1. O Núcleo do Sistema (MVP)
Mecânicas fundamentais que guiam todas as fases:
- **Núcleo do Sistema:** Resolução de ações baseada em D20 contra uma Classe de Dificuldade (CD).
- **Pilares de Personagem:** Três Origens distintas: **Colonizador**, **Indígena** e **Ser Folclórico**.
- **Sistema de Classes:** Estrutura flexível com 12 classes iniciais, evoluindo através de três Tiers.

### 2.2. A Adaptação Digital (Modelo Co-op)
A visão final não é um MMO massivo, mas uma experiência de RPG profunda que pode ser compartilhada.
- **Arquitetura Técnica:**
    - **Host (O Dono do Eco):** O jogador que hospeda o jogo. O save e o estado do mundo ficam no PC dele.
    - **Client (O Viajante da Raiz):** O amigo que se conecta via P2P. Ele traz seu personagem, mas interage com a história do Host.

## 3.0 Público-Alvo e Posicionamento

- **Público Primário:** Jogadores experientes de RPG (mesa e digital) que buscam profundidade mecânica e narrativa. Fãs de *Baldur's Gate 3* (Co-op), *Divinity*, *Solasta* e *Stardew Valley* (Multiplayer).
- **Posicionamento:** Preenche a lacuna de RPGs táticos profundos com temática sul-americana (Eco-Fantasia), oferecendo uma campanha que pode ser jogada 100% solo ou com amigos, sem a pressão de servidores competitivos.

## 4.0 Mecânicas Centrais de Gameplay

### 4.1. Progressão de Personagem
- **Tiers de Classe:** Evolução vertical (Tier 1-3).
- **A "Moeda de Classe":** Item raro necessário para desbloquear classes. No modelo Co-op, a obtenção é balanceada para ser justa tanto jogando sozinho quanto em grupo.
- **Troca Estratégica:** Habilidades ativas desbloqueadas entram para um "pool" global do personagem.

### 4.2. Economia e Crafting
- **Proficiências:** Divisão entre **Coleta** e **Produção**.
- **Comércio P2P:** Jogadores podem trocar itens livremente quando conectados na mesma sessão (dropando no chão ou via interface de troca).
- **Matriz de Itemização:** Poder definido por uma matriz 5x5 de Qualidade e Raridade.

### 4.3. Narrativa e Mundo
- **Raiz do Mundo:** A força mística que conecta as eras e permite a "Sincronia Espiritual" (explicação in-lore para o Multiplayer).
- **Dom da Revivência:** A justificativa *in-game* para a troca de classes e acesso a diferentes períodos históricos.

---

## 5.0 Roadmap de Desenvolvimento (6 Fases)

### Fase 1: RPG de Mesa Digital (MVP Offline)
* **Objetivo:** Validar Regras, Enredo (Ato 1) e Loop de Loot sem custos de arte.
* **O Jogo:** Interface de Texto (Console/UI na Engine). Combate estático por turnos.
* **Tech:** Godot/Unity (UI de Texto). Lógica desacoplada da visualização.
* **Entregável:** Motor de RPG rodando localmente onde se pode jogar a história completa do Ato 1.

### Fase 2: RPG de Mesa Digital (MVP Co-op)
* **Objetivo:** Validar a Arquitetura de Rede P2P e Sincronia de Dados.
* **O Jogo:** A mesma interface de texto da Fase 1, mas um segundo jogador se conecta.
* **Funcionalidades:** Chat, troca de itens, combate em grupo (Turno A -> Turno B -> Inimigo).
* **Tech:** Netcode básico (RPCs/Sinais). O "Serviço de Jogo" aceita comandos remotos.

### Fase 3: Jogo Digital v1 - Protótipo Visual (Offline)
* **Objetivo:** Validar Estilo de Arte (Pixel Art), Fluxo de Exploração e Ambientação.
* **O Jogo:** O "Eco" ganha vida visual. Movimentação via "Navegação por Blocos" (clique para andar). Ciclo Dia/Noite visual.
* **Funcionalidades:** Combate Estático (JRPG) com visual. Interação com NPCs.
* **Tech:** Sistema de Grid Visual, Máquina de Estados de Animação.

### Fase 4: Jogo Digital v1 - Mundo Conectado (Co-op)
* **Objetivo:** Validar a exploração conjunta em tempo real.
* **O Jogo:** Dois personagens andando no mapa visualmente.
* **Funcionalidades:** Implementação do **"Tempo Fluido" (Heartbeat)** para movimento simultâneo fora de combate. Sincronia de posição e estado dos NPCs.
* **Tech:** Interpolação de movimento, Correção de latência básica.

### Fase 5: Jogo Digital v2 - Núcleo Tático (Offline)
* **Objetivo:** Implementar a profundidade final (Grid Tático).
* **O Jogo:** Substituição do combate estático pelo combate em **Grid Isométrico**.
* **Funcionalidades:** Ataques de Oportunidade, Cobertura, Flanco, Alcance real.
* **Tech:** Pathfinding Avançado (A*), Lógica de Grid Tático.

### Fase 6: Jogo Digital v2 - Tática Compartilhada (Co-op)
* **Objetivo:** A experiência completa para lançamento.
* **O Jogo:** Combate tático onde os jogadores combinam estratégias no grid.
* **Funcionalidades:** Sincronia de turnos táticos, combos de habilidades entre jogadores.
* **Entregável:** Build Final para Acesso Antecipado.

---

## 6.0 Sistemas Avançados e Visão Pós-Lançamento

- **Durabilidade e Reparo:** Equipamentos degradam com o uso.
- **Modo Hardcore (Opcional):** Opção de morte permanente para o save.
- **Inimigos Evolutivos:** Sistema onde inimigos que derrotam jogadores ganham XP.