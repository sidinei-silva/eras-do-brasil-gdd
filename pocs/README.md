# 🧪 POCs — Provas de Conceito

> ⚠️ **ARQUIVO HISTÓRICO:** Após o [ADR-004](../vibe/decisions/ADR-004-pivot-mmorpg-servidor-go.md) (pivot para servidor Go + cliente web), as 38 POCs Unity/C# foram substituídas por um desenvolvimento incremental por **Fases** (Heartbeat → Multiplayer). Os conceitos validados por cada POC foram integrados nas entregas das novas fases. Consulte o [Guia de Retomada](../docs/GUIA_RETOMADA.md) para o plano atualizado.

## Eras do Brasil — Índice Mestre (Histórico)

Este diretório continha as **Provas de Conceito (POCs)** planejadas para Unity/C#. Cada POC era um protótipo isolado que validaria uma mecânica específica.

### Filosofia de Desenvolvimento (Original — Unity)

O desenvolvimento seguia uma abordagem **progressiva e modular**:

- **Peça por peça** — cada POC resolve um problema específico e bem definido
- **Reutilização de código** — POCs anteriores servem de base para as seguintes
- **Validação contínua** — cada sistema é testado isoladamente antes de ser integrado
- **Complexidade incremental** — começamos pelo motor de regras puro (C#, sem gráficos) e avançamos até UI, rede e narrativa

Cada pasta contém um `README.md` próprio com o contexto detalhado, requisitos, critérios de aceitação e instruções de execução da POC.

---

## 🏷️ Legenda de Prioridade

| Ícone | Prioridade | Descrição |
|:-----:|:----------:|:----------|
| 🟢 | **Core / Crítico** | Sistemas fundamentais — sem eles o jogo não funciona |
| 🟡 | **Importante** | Sistemas que enriquecem a experiência, mas podem vir depois |
| 🔵 | **Polimento** | Refinamentos, melhorias visuais e qualidade de vida |

---

## Módulo A: Motor de Regras (Lógica Pura)

> C# puro, sem gráficos. A fundação de dados e mecânicas do jogo.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 01 | [Fundação de Dados](01-fundacao-dados/) | 🟢 | Pendente |
| 02 | [Motor D20](02-motor-d20/) | 🟢 | Pendente |
| 03 | [Atributos e Criação](03-atributos-criacao/) | 🟢 | Pendente |
| 04 | [Tier Scaling](04-tier-scaling/) | 🟢 | Pendente |
| 05 | [Herança de Habilidades](05-heranca-habilidades/) | 🟢 | Pendente |
| 06 | [Matriz de Itens 5x5](06-matriz-itens/) | 🟢 | Pendente |

---

## Módulo B: Mundo e Tempo

> Sistema de ticks, navegação e simulação do mundo vivo.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 07 | [Motor de Ticks](07-motor-ticks/) | 🟢 | Pendente |
| 08 | [Navegação por Blocos](08-navegacao-blocos/) | 🟢 | Pendente |
| 09 | [Eventos de Mundo](09-eventos-mundo/) | 🟡 | Pendente |
| 10 | [Relógio da Ruptura](10-relogio-ruptura/) | 🟡 | Pendente |
| 11 | [Clima e Maré](11-clima-mare/) | 🟡 | Pendente |

---

## Módulo C: NPCs e IA

> Vida própria dos NPCs — rotinas, decisões e interações sociais.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 12 | [Rotinas de NPCs](12-rotinas-npcs/) | 🟢 | Pendente |
| 13 | [Utility AI](13-utility-ai/) | 🟡 | Pendente |
| 14 | [Sistema de Fofoca](14-fofoca-npcs/) | 🟡 | Pendente |
| 15 | [Facções e Reputação](15-faccoes-reputacao/) | 🟡 | Pendente |
| 16 | [Diálogos Ramificados](16-dialogos/) | 🟡 | Pendente |

---

## Módulo D: Combate

> Sistema de combate estático e tático — do básico ao espacial.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 17 | [Combate Estático (Fase 1)](17-combate-estatico/) | 🟢 | Pendente |
| 18 | [Status e Condições](18-status-condicoes/) | 🟢 | Pendente |
| 19 | [Habilidades em Combate](19-habilidades-combate/) | 🟢 | Pendente |
| 20 | [Loot e Recompensas](20-loot-recompensas/) | 🟡 | Pendente |
| 21 | [Grid Tático (Fase 2)](21-grid-tatico/) | 🟡 | Pendente |
| 22 | [Pathfinding A*](22-pathfinding/) | 🟡 | Pendente |
| 23 | [Combate Espacial](23-combate-espacial/) | 🟡 | Pendente |

---

## Módulo E: Economia e Crafting

> Inventário, coleta, fabricação e comércio.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 24 | [Inventário](24-inventario/) | 🟢 | Pendente |
| 25 | [Coleta e Proficiências](25-coleta-proficiencias/) | 🟢 | Pendente |
| 26 | [Crafting](26-crafting/) | 🟡 | Pendente |
| 27 | [Comércio e NPCs](27-comercio/) | 🟡 | Pendente |

---

## Módulo F: UI e Visual

> Interfaces do jogador — HUD, mapas, telas de combate e criação.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 28 | [HUD Principal](28-hud-principal/) | 🟢 | Pendente |
| 29 | [Mapa de Nós](29-mapa-nos/) | 🟡 | Pendente |
| 30 | [Tela de Cena (Split)](30-tela-cena/) | 🟡 | Pendente |
| 31 | [Tela de Combate Estático](31-tela-combate/) | 🟡 | Pendente |
| 32 | [Criação de Personagem](32-criacao-personagem/) | 🟡 | Pendente |

---

## Módulo G: Persistência e Rede

> Save/load, conexão peer-to-peer e sincronia multiplayer.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 33 | [Save/Load (JSON)](33-save-load/) | 🟢 | Pendente |
| 34 | [Conexão P2P Básica](34-conexao-p2p/) | 🟡 | Pendente |
| 35 | [Sincronia de Ticks P2P](35-sincronia-ticks/) | 🟡 | Pendente |
| 36 | [Trade Atômico P2P](36-trade-atomico/) | 🟡 | Pendente |

---

## Módulo H: Missões e Narrativa

> Quests, campanhas e a experiência narrativa completa.

| # | POC | Prioridade | Status |
|:-:|:----|:----------:|:------:|
| 37 | [Sistema de Quests](37-sistema-quests/) | 🟡 | Pendente |
| 38 | [Mini-Campanha Completa](38-mini-campanha/) | 🟡 | Pendente |

---

## 📋 Ordem Sugerida de Execução

A ordem abaixo prioriza a construção de uma base sólida, validando fundamentos antes de avançar para sistemas mais complexos:

### Fase 1 — Fundação (Motor + Tempo)
1. **POC 01** — Fundação de Dados *(structs, enums, ScriptableObjects)*
2. **POC 02** — Motor D20 *(rolagem, modificadores, DC)*
3. **POC 07** — Motor de Ticks *(coração do mundo vivo)*

### Fase 2 — Personagem e Mundo
4. **POC 03** — Atributos e Criação *(ficha do personagem)*
5. **POC 08** — Navegação por Blocos *(movimentação no mapa)*
6. **POC 17** — Combate Estático *(primeiro combate funcional)*

### Fase 3 — Economia e Persistência
7. **POC 06** — Matriz de Itens 5x5 *(sistema de itens)*
8. **POC 24** — Inventário *(gerenciamento de itens)*
9. **POC 33** — Save/Load *(salvar e carregar o jogo)*

### Fase 4 — Profundidade de Combate
10. **POC 18** — Status e Condições
11. **POC 19** — Habilidades em Combate
12. **POC 04** — Tier Scaling
13. **POC 05** — Herança de Habilidades

### Fase 5 — Mundo Vivo
14. **POC 12** — Rotinas de NPCs
15. **POC 09** — Eventos de Mundo
16. **POC 25** — Coleta e Proficiências
17. **POC 13** — Utility AI

### Fase 6 — Interação e UI
18. **POC 16** — Diálogos Ramificados
19. **POC 28** — HUD Principal
20. **POC 29** — Mapa de Nós
21. **POC 15** — Facções e Reputação

### Fase 7 — Expansão
22. **POC 10** — Relógio da Ruptura
23. **POC 11** — Clima e Maré
24. **POC 14** — Sistema de Fofoca
25. **POC 20** — Loot e Recompensas
26. **POC 26** — Crafting
27. **POC 27** — Comércio e NPCs

### Fase 8 — Combate Avançado e Telas
28. **POC 21** — Grid Tático (Fase 2)
29. **POC 22** — Pathfinding A*
30. **POC 23** — Combate Espacial
31. **POC 30** — Tela de Cena (Split)
32. **POC 31** — Tela de Combate Estático
33. **POC 32** — Criação de Personagem

### Fase 9 — Multiplayer
34. **POC 34** — Conexão P2P Básica
35. **POC 35** — Sincronia de Ticks P2P
36. **POC 36** — Trade Atômico P2P

### Fase 10 — Narrativa Completa
37. **POC 37** — Sistema de Quests
38. **POC 38** — Mini-Campanha Completa

---

## 🔗 Links Úteis

- [Roadmap de Desenvolvimento](../gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md)

---

> **Nota:** Cada pasta de POC contém um `README.md` com contexto detalhado, incluindo objetivo, dependências, critérios de aceitação e instruções para execução.
