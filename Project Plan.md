# Plano de Projeto: Eras do Brasil

## 1.0 Visão e Estratégia Geral

Este documento delineia a visão fundamental para 'Eras do Brasil', detalhando o conceito de alto nível, a missão central e a estratégia de entrada no mercado. Ele serve como uma estrela-guia para o desenvolvimento.

'Eras do Brasil' é um RPG de fantasia histórica ambientado em uma versão mística do Brasil. Nossa missão principal é criar uma experiência imersiva que entrelace magistralmente a história e o folclore brasileiros com uma jogabilidade inovadora e estrategicamente gratificante.

A estratégia de desenvolvimento é **Iterativa e Híbrida**: construiremos o jogo em camadas de complexidade (Texto > Visual > Tático), sempre validando primeiro o modo Offline (Eco) e depois o Online (Raiz).

## 2.0 Definição do Produto e Escopo

### 2.1. O Núcleo do Sistema (MVP)
Mecânicas fundamentais que guiam todas as fases:
- **Núcleo do Sistema:** Resolução de ações baseada em D20 contra uma Classe de Dificuldade (CD).
- **Pilares de Personagem:** Três Origens distintas: **Colonizador**, **Indígena** e **Ser Folclórico**.
- **Sistema de Classes:** Estrutura flexível com 12 classes iniciais, evoluindo através de três Tiers.
- **Arquitetura Híbrida:** Divisão clara entre **O Eco** (Campanha Pessoal/Offline) e **A Raiz** (Mundo Persistente/Online).

### 2.2. A Adaptação Digital
A visão final é um RPG onde as ações dos jogadores têm consequências duradouras, seja na sua narrativa pessoal ou no destino do servidor.

## 3.0 Público-Alvo e Posicionamento

- **Público Primário:** Jogadores experientes de RPG (mesa e digital) que buscam profundidade mecânica e combate estratégico. Fãs de *Orna*, *Albion*, *Solasta* e *Ravendawn*.
- **Posicionamento:** Preenche a lacuna de RPGs mecanicamente profundos enraizados em um cenário cultural sul-americano (Eco-Fantasia).

## 4.0 Mecânicas Centrais de Gameplay

### 4.1. Progressão de Personagem
- **Tiers de Classe:** Evolução vertical (Tier 1-3).
- **A "Moeda de Classe":** Item raro necessário para desbloquear classes. O Online oferece mais moedas (risco/recompensa), mas o Offline garante a obtenção segura.
- **Troca Estratégica:** Habilidades ativas desbloqueadas entram para um "pool" global do personagem.

### 4.2. Economia e Crafting
- **Proficiências:** Divisão entre **Coleta** e **Produção**.
- **Dualidade de Recursos:** Recursos Físicos (Offline) para base, Recursos Espirituais (Online) para encantamento.
- **Matriz de Itemização:** Poder definido por uma matriz 5x5 de Qualidade e Raridade.

### 4.3. Narrativa e Mundo
- **Raiz do Mundo:** A força mística que conecta as eras e os jogadores online.
- **Dom da Revivência:** A justificativa *in-game* para a troca de classes e acesso a diferentes períodos históricos.

## 5.0 Roadmap de Desenvolvimento (Estratégia Iterativa Híbrida)

Este roteiro segue uma evolução técnica em 3 estágios. Em cada estágio, primeiro validamos o **Offline (Eco)** e depois integramos o **Online (Raiz)**.

### Fase 1: RPG de Mesa Digital (MVP Offline / Eco) - CONCLUÍDO (Design)
* **Foco:** Validar Regras, Enredo (Ato 1) e Sistema de Ticks Reativos.
* **O Jogo:** Interface de Texto (Console/UI Simples). O jogador vive a história sozinho.
* **Entregável:** Motor de RPG rodando localmente com JSONs de dados.

### Fase 2: RPG de Mesa Digital (MVP Híbrido / Raiz) - PRÓXIMO
* **Foco:** Validar Arquitetura de Dados e Conexão Híbrida.
* **O Jogo:** Adição de Login e Banco de Dados. O jogador pode enviar seu personagem do Offline para um "Lobby de Texto" (Raiz) e participar de uma missão cooperativa simples.
* **Entregável:** Backend básico e validação da economia (Loot Online vs Offline).

### Fase 3: Jogo Digital v1 - Protótipo Visual (Offline / Eco)
* **Foco:** Validar Estilo de Arte (Pixel Art) e Navegação por Blocos.
* **O Jogo:** O "Eco" ganha vida visual. O jogador anda pelo mapa, vê os NPCs e o ciclo de Ticks afeta o visual (Dia/Noite). Combate estático (JRPG).
* **Entregável:** Cliente Godot/Unity Single Player funcional.

### Fase 4: Jogo Digital v1 - Mundo Conectado (Online / Raiz)
* **Foco:** Validar o Hub Social Visual e Ciclos Sazonais.
* **O Jogo:** Jogadores se veem no Hub (Cidade). Implementação dos "Turnos de NPC" globais. Missões de grupo visuais.
* **Entregável:** Cliente Multiplayer com Chat e Instâncias Cooperativas.

### Fase 5: Jogo Digital v2 - Núcleo Tático (Offline / Eco)
* **Foco:** Implementar a profundidade final (Grid Tático).
* **O Jogo:** Substituição do combate estático pelo combate em Grid (Movimento, Alcance, Flanco).
* **Entregável:** A experiência "Premium" de gameplay solo.

### Fase 6: Lançamento (Acesso Antecipado - Híbrido Completo)
* **Foco:** Conteúdo e Polimento.
* **O Jogo:** A união completa. Campanha Offline (Eco) alimenta o personagem para as Guerras Sazonais Táticas (Raiz).
* **Entregável:** Publicação na Steam/Lojas.

## 6.0 Sistemas Avançados e Visão Pós-Lançamento

- **Durabilidade e Reparo:** Equipamentos degradam com o uso.
- **Full Loot na Morte (Opcional):** Modos hardcore específicos em áreas da Raiz.
- **Inimigos Evolutivos:** Sistema onde inimigos que derrotam jogadores ganham XP.