# Plano de Projeto: Eras do Brasil (Estratégia Co-op P2P)

> **Navegação:** [GDD](README.md) · [Game Pitch](Game_Pitch.md) · [Roadmap de Desenvolvimento](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md) · [POCs](../pocs/README.md) · [Projeto](../README.md)

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

## 5.0 Roadmap de Desenvolvimento

> **Nota:** O roadmap detalhado com todas as POCs, entregas por sprint e critérios de aceite está em [02_Roadmap_Desenvolvimento.md](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md). Esta seção apresenta a visão estratégica das fases.

### Fase 0: POCs — Provas de Conceito
* **Objetivo:** Validar riscos técnicos isolados antes de montar o jogo.
* **Escopo:** 38 POCs organizadas em 8 módulos (Regras, Mundo, NPCs, Combate, Economia, UI, Rede, Narrativa).
* **Tech:** Unity (LTS) + C#. Cada POC é um mini-projeto independente.
* **Referência:** [Índice de POCs](../pocs/README.md)

### Fase 1: MVP — "O Despertar" (Offline)
* **Objetivo:** Loop jogável de 15–30 min. Criar personagem, explorar, lutar, voltar.
* **Escopo:** 1 Origem, 1 Classe, 3 Blocos, 2 Inimigos, Combate Estático, Inventário, Save/Load.
* **Referência:** [Detalhes do MVP](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md#-fase-1-mvp--o-despertar)

### Fase 2: Pré-Alpha — "O Mundo Vivo"
* **Objetivo:** Adicionar profundidade: NPCs, economia, Relógio da Ruptura.
* **Escopo:** 3 Origens, diálogos, crafting, 8 blocos.
* **Referência:** [Detalhes Pré-Alpha](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md#-fase-2-pré-alpha--o-mundo-vivo)

### Fase 3: Alpha — "O Jogo Ganha Vida"
* **Objetivo:** Pixel art, 12 classes, Ato 1 completo.
* **Referência:** [Detalhes Alpha](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md#-fase-3-alpha--o-jogo-ganha-vida)

### Fase 4: Beta — "A Tática"
* **Objetivo:** Grid isométrico, combate posicional, 18 mini-campanhas.
* **Referência:** [Detalhes Beta](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md#-fase-4-beta--a-tática)

### Fase 5: Release — "A Raiz Conecta"
* **Objetivo:** Co-op P2P, polimento, Acesso Antecipado (Steam).
* **Referência:** [Detalhes Release](99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md#-fase-5-release--a-raiz-conecta)

---

## 6.0 Sistemas Avançados e Visão Pós-Lançamento

- **Durabilidade e Reparo:** Equipamentos degradam com o uso.
- **Modo Hardcore (Opcional):** Opção de morte permanente para o save.
- **Inimigos Evolutivos:** Sistema onde inimigos que derrotam jogadores ganham XP.