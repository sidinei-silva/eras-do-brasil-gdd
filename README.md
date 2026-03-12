# 🌿 Eras do Brasil

> RPG de eco-fantasia ambientado em uma versão mística do Brasil colonial (1497), onde colonizadores, povos originários e seres folclóricos coexistem em ciclos de tempo, espiritualidade e memória.

---

## 🎮 Sobre o Projeto

**Eras do Brasil** é um MUD Moderno — um RPG online persistente com servidor Go e cliente web via WebSocket. O jogador é um **Desperto** — alguém que carrega ecos de vidas passadas e pode acessar habilidades de diferentes eras através do **Dom da Revivência**.

### Pilares de Design

- **Narrativa Profunda** — Fantasia eco-histórica com folclore brasileiro
- **Combate Tático D20** — De estático a grid tático com posicionamento
- **Mundo Persistente (Ticks)** — NPCs com rotinas, facções que avançam, tick global 24/7
- **Flexibilidade de Classes** — Troca livre entre 12 classes de 3 origens
- **Mundo Online (Raiz)** — Múltiplos jogadores, full loot, missões competitivas, eventos globais

### Inspirações

*Fallen London* · *Torn* · *Stoneshard* · *Solasta* · *Sea of Stars* · *Roadwarden* · *Kingdom of Loathing*

---

## 📂 Estrutura do Repositório

```
├── gdd/                         # Game Design Document (A bíblia do jogo)
│   ├── 01_Livro_de_Regras/      # Mecânicas, combate, mundo vivo
│   ├── 02_Livro_de_Classes/     # 12 classes, tiers, herança
│   ├── 03_Enredo_e_Mundo/       # Ato 1, mini-campanhas, lore
│   ├── 04_Design_Visual/        # Referências visuais, UI/HUD
│   ├── 05_Livros_Auxiliares/    # Atlas do Eco (mapa)
│   ├── 06_Dados_e_Assets/       # Schemas JSON, dados iniciais
│   └── 99_Meta_e_Backlog/       # Roadmap e estratégia
├── server/                      # Servidor Go (a ser criado)
├── web/                         # Cliente web (HTML/CSS/JS)
├── docs/                        # Documentação oficial
│   ├── product/                 # Specs de produto
│   └── tech/                    # Documentação técnica
├── vibe/                        # Contexto evolutivo (Vibe Flow)
│   ├── decisions/               # ADRs (decisões de arquitetura)
│   ├── sessions/                # Logs de sessões
│   └── project-status.md        # Status atual
└── ROADMAP.md                   # Roadmap público
```

---

## 🖥️ Stack Tecnológica

| Componente | Tecnologia |
|------------|------------|
| Servidor | Go 1.22+ |
| Cliente | HTML / CSS / JS (vanilla) |
| Comunicação | WebSocket (gorilla/websocket) |
| Dados | JSON (templates + saves) |
| IA Dev | GitHub Copilot (VS Code) |

---

## 🗺️ Fases de Desenvolvimento

| Fase | Nome | Objetivo |
|------|------|----------|
| **0** | Heartbeat | Servidor Go com tick loop + WebSocket |
| **1** | Living World | Blocos, NPCs com IA, dia/noite |
| **2** | Observer | Cliente web observa o mundo vivo |
| **3** | Player | D20, combate, inventário, save/load |
| **4** | Interaction | Economia, diálogos, facções, crafting |
| **5** | D20 Full | 12 classes, grid tático, Ato 1 completo |
| **6** | Multiplayer | Full loot, missões competitivas, eventos globais |

👉 [Roadmap detalhado](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md)

---

## 📖 Documentação Rápida

| Documento | Descrição |
|-----------|-----------|
| [Game Pitch](gdd/Game_Pitch.md) | Apresentação do jogo |
| [Project Plan](gdd/Project%20Plan.md) | Plano de projeto e fases |
| [GDD Completo](gdd/README.md) | Índice do Game Design Document |
| [Roadmap](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md) | Roadmap de desenvolvimento |
| [ADR-004 — Pivot MMORPG](vibe/decisions/ADR-004-pivot-mmorpg-servidor-go.md) | Decisão de pivot para servidor Go |
| [Auditoria do GDD](gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md) | Resultado da auditoria de consistência |

---

## 🤖 Agentes IA (Vibe Flow)

O projeto usa o [Vibe Flow](https://github.com/yourusername/vibe-flow) para organização com agentes especializados:

- `@researcher` — Pesquisa e validação
- `@product-manager` — Specs de produto
- `@architect` — Decisões técnicas
- `@tech-lead` — Planejamento de tarefas
- `@vibe-keeper` — Histórico e contexto

---

*"Antes da primeira palavra, havia o Sussurro. Antes do primeiro império, havia a Raiz."*
