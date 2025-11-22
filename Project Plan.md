# Plano de Projeto: Eras do Brasil

## 1.0 Visão e Estratégia Geral

Este documento delineia a visão fundamental para 'Eras do Brasil', detalhando o conceito de alto nível, a missão central e a estratégia de entrada no mercado. Ele serve como uma estrela-guia para o desenvolvimento, articulando a estrutura estratégica projetada para entregar uma experiência de RPG única. 'Eras do Brasil' é um RPG de fantasia histórica ambientado em uma versão mística do Brasil.

Nossa missão principal é criar uma experiência imersiva que entrelace magistralmente a história e o folclore brasileiros com uma jogabilidade inovadora e estrategicamente gratificante.

Para alcançar isso, o projeto seguirá uma abordagem de desenvolvimento em duas frentes estratégicas. Começa com um MVP de RPG de Mesa para mitigar riscos, permitindo testar e validar o loop central de jogabilidade antes de comprometer capital significativo no desenvolvimento digital. Após essa validação, executaremos uma adaptação digital em fases.

## 2.0 Definição do Produto e Escopo

### 2.1. O RPG de Mesa: Validação do Sistema (MVP)

O RPG de Mesa servirá como o Produto Mínimo Viável (MVP). Sua função principal é fornecer uma plataforma robusta para testes e balanceamento.

Mecânicas fundamentais do sistema para o MVP de mesa:
- **Núcleo do Sistema:** Resolução de ações baseada em D20 contra uma Classe de Dificuldade (CD).
- **Pilares de Personagem:** Três Origens distintas: **Colonizador**, **Indígena** e **Ser Folclórico**.
- **Sistema de Classes:** Estrutura flexível com 12 classes iniciais (quatro por Origem), evoluindo através de três Tiers.
- **Progressão:** Modelo único onde habilidades ativas são herdadas permanentemente ao trocar de classe, enquanto passivas não são, permitindo "Builds Híbridas" profundas.

### 2.2. A Adaptação Digital: Visão de Longo Prazo

A visão final é um RPG de mundo persistente onde as ações dos jogadores têm consequências duradouras. O desenvolvimento será abordado em fases estratégicas.

## 3.0 Público-Alvo e Posicionamento

- **Público Primário:** Jogadores experientes de RPG (mesa e digital) que buscam profundidade mecânica e combate estratégico. Fãs de *Orna*, *Albion*, *Solasta* e *Ravendawn*.
- **Posicionamento:** 'Eras do Brasil' preenche uma lacuna ao oferecer um RPG mecanicamente profundo enraizado em um cenário culturalmente rico e pouco explorado (folclore sul-americano), diferindo da fantasia europeia tradicional.

## 4.0 Mecânicas Centrais de Gameplay

### 4.1. Progressão de Personagem
- **Tiers de Classe:** Evolução vertical (Tier 1-3) dentro de uma era para garantir profundidade sem depender de novos conteúdos.
- **A "Moeda de Classe":** Item raro necessário para desbloquear classes, obtido através de missões de mentores.
- **Troca Estratégica:** Habilidades ativas desbloqueadas entram para um "pool" global do personagem, incentivando a experimentação.

### 4.2. Economia e Crafting
- **Proficiências:** Divisão entre **Coleta** e **Produção**.
- **Matriz de Itemização:** Poder definido por uma matriz 5x5 de **Qualidade e Raridade**, criando um loop de busca por loot a longo prazo.

### 4.3. Narrativa e Mundo
- **Raiz do Mundo:** A força mística que conecta as eras.
- **Dom da Revivência:** A justificativa *in-game* para a troca de classes e acesso a diferentes períodos históricos.

## 5.0 Roadmap de Desenvolvimento (Plano Estratégico de 6 Fases)

Este roteiro delineia uma estratégia incremental, projetada especificamente para um desenvolvedor solo, alternando entre implementações "Offline" e "Online" para validação contínua.

### Fase 1: RPG de Mesa Digital (MVP Offline)
* **Objetivo:** Validar Regras Centrais e Loop de Jogo sem custos de servidor ou arte complexa.
* **Funcionalidades:** Interface de texto com escolhas clicáveis (UI Fase 1). Combate estático. Sem servidor.
* **Tech:** Gerenciador de Jogo Local, Dados em JSON.

### Fase 2: RPG de Mesa Digital (Online / MMO Lite)
* **Objetivo:** Validar Arquitetura de Servidor e Persistência de Banco de Dados usando o cliente de texto.
* **Funcionalidades:** Mesma interface da Fase 1, mas dados salvos no servidor. Sistema de chat. Teste do sistema de missões "Corrida pela Recompensa".
* **Tech:** Servidor Node.js/Go, PostgreSQL, WebSockets.

### Fase 3: Jogo Digital v1 - Protótipo Visual (Offline)
* **Objetivo:** Validar Estilo de Arte, Fluxo de Exploração e Economia visualmente.
* **Funcionalidades:** Movimentação via "Navegação por Blocos" (Nós). UI em Pixel Art. Combate Estático (estilo JRPG). Single Player.
* **Tech:** Godot Engine (Cliente), Save Local.

### Fase 4: Jogo Digital v1 - Mundo Conectado (Online)
* **Objetivo:** Validar a economia de "Mundo Vivo" e eventos globais visualmente.
* **Funcionalidades:** Mesmo visual da Fase 3. Ticks Globais afetam regeneração de recursos e posição de NPCs para todos.
* **Tech:** Integração do Cliente Godot com o Servidor da Fase 2.

### Fase 5: Jogo Digital v2 - Núcleo Tático (Offline)
* **Objetivo:** Implementar o Combate Tático em Grid e Movimentação Livre.
* **Funcionalidades:** Grid Isométrico (5x5+), Ataques de Oportunidade, Alcance, Cobertura. Movimentação livre com ticks de tempo (estilo *Stoneshard*). Single Player.
* **Tech:** Pathfinding Avançado, Módulo de Lógica de Grid.

### Fase 6: Eras do Brasil - Grande Lançamento (MMORPG Online)
* **Objetivo:** A visão completa. Um mundo persistente, tático e vivo.
* **Funcionalidades:** Combate Tático Multiplayer, Guildas, Controle de Território, Ticks Globais totalmente sincronizados.
* **Tech:** Autoridade total do servidor sobre movimentação e combate.

## 6.0 Sistemas Avançados e Visão Pós-Lançamento

- **Durabilidade e Reparo:** Equipamentos degradam com o uso, exigindo manutenção via crafting.
- **Full Loot na Morte (Opcional):** Modo hardcore onde itens equipados caem ao morrer, gerando alta tensão.
- **Inimigos Evolutivos:** Inimigos que derrotam o jogador ganham XP e se tornam nêmesis recorrentes.