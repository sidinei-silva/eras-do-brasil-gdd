# 🌿 Eras do Brasil

> RPG tático de eco-fantasia ambientado em uma versão mística do Brasil colonial (1497), onde colonizadores, povos originários e seres folclóricos coexistem em ciclos de tempo, espiritualidade e memória.

---

## 🎮 Sobre o Projeto

**Eras do Brasil** é um RPG tático por turnos com elementos de mundo aberto, sistema de classes flexível e cooperativo P2P. O jogador é um **Desperto** — alguém que carrega ecos de vidas passadas e pode acessar habilidades de diferentes eras através do **Dom da Revivência**.

### Pilares de Design

- **Narrativa Profunda** — Fantasia eco-histórica com folclore brasileiro
- **Combate Tático D20** — De estático (JRPG) a grid isométrico (Solasta)
- **Mundo Vivo (Ticks)** — NPCs com rotinas, facções que avançam, tempo que não para
- **Flexibilidade de Classes** — Troca livre entre 12 classes de 3 origens
- **Co-op P2P** — Campanha compartilhada sem servidores

### Inspirações

*Stoneshard* · *Solasta* · *Baldur's Gate 3* · *Sea of Stars* · *Roadwarden* · *Orna*

---

## 📂 Estrutura do Repositório

```
├── gdd/                         # Game Design Document (A bíblia do jogo)
│   ├── 01_Livro_de_Regras/      # Mecânicas, combate, mundo vivo
│   ├── 02_Livro_de_Classes/     # 12 classes, tiers, herança
│   ├── 03_Enredo_e_Mundo/       # Ato 1, mini-campanhas, lore
│   ├── 04_Design_Visual/        # Pixel art, UI/HUD, paleta
│   ├── 05_Livros_Auxiliares/    # Atlas do Eco (mapa)
│   ├── 06_Dados_e_Assets/       # Schemas JSON, dados iniciais
│   └── 99_Meta_e_Backlog/       # Roadmap e estratégia
├── pocs/                        # 38 POCs (Provas de Conceito Unity/C#)
├── docs/                        # Documentação oficial
│   ├── product/                 # Specs de produto
│   └── tech/                    # Documentação técnica
│       ├── organizacao-projeto-unity.md  # Estrutura do projeto Unity
│       ├── workflow-ui-ux.md            # Processo de UI/UX
│       └── wireframes/                  # Wireframes das telas
├── vibe/                        # Contexto evolutivo (Vibe Flow)
│   ├── decisions/               # ADRs (decisões de arquitetura)
│   ├── sessions/                # Logs de sessões
│   └── project-status.md        # Status atual
└── ROADMAP.md                   # Roadmap público
```

---

## 🧪 POCs — Desenvolvimento Progressivo

O projeto segue uma abordagem de **desenvolvimento progressivo**: construir peça por peça, mecânica por mecânica, através de 38 POCs organizadas em 8 módulos.

| Módulo | Foco | POCs |
|--------|------|------|
| **A** | Motor de Regras (C# puro) | 01–06 |
| **B** | Mundo e Tempo | 07–11 |
| **C** | NPCs e IA | 12–16 |
| **D** | Combate | 17–23 |
| **E** | Economia e Crafting | 24–27 |
| **F** | UI e Visual | 28–32 |
| **G** | Persistência e Rede | 33–36 |
| **H** | Missões e Narrativa | 37–38 |

👉 [Ver todas as POCs](pocs/README.md)

---

## 🗺️ Fases de Desenvolvimento

| Fase | Nome | Objetivo |
|------|------|----------|
| **0** | POCs | Validar riscos técnicos isolados |
| **1** | MVP — "O Despertar" | Loop jogável de 15-30 min |
| **2** | Pré-Alpha — "O Mundo Vivo" | NPCs, economia, Relógio da Ruptura |
| **3** | Alpha — "O Jogo Ganha Vida" | Pixel art, 12 classes, Ato 1 completo |
| **4** | Beta — "A Tática" | Grid isométrico, combate posicional |
| **5** | Release — "A Raiz Conecta" | Co-op P2P, polimento, Acesso Antecipado |

👉 [Roadmap detalhado](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md)

---

## 🖥️ Stack Tecnológica

| Componente | Tecnologia |
|------------|------------|
| Engine | Unity (LTS) |
| Linguagem | C# (.NET) |
| Netcode | Unity NGO (Host-Client P2P) |
| Dados | ScriptableObjects + JSON |
| UI | Unity UI Toolkit |
| IA Dev | GitHub Copilot (VS Code) |

---

## 📖 Documentação Rápida

| Documento | Descrição |
|-----------|-----------|
| [Game Pitch](gdd/Game_Pitch.md) | Apresentação do jogo |
| [Project Plan](gdd/Project%20Plan.md) | Plano de projeto e fases |
| [GDD Completo](gdd/README.md) | Índice do Game Design Document |
| [POCs](pocs/README.md) | Índice das 38 provas de conceito |
| [Roadmap](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md) | Roadmap de desenvolvimento |
| [🔴 Guia de Retomada](docs/GUIA_RETOMADA.md) | Timeline cronológica para retomar o projeto |
| [Organização Unity](docs/tech/organizacao-projeto-unity.md) | Estrutura do projeto Unity (POCs + jogo) |
| [Workflow UI/UX](docs/tech/workflow-ui-ux.md) | Processo de wireframes, prototipagem e design |
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
