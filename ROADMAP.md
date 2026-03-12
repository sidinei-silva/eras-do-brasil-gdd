# 🗺️ Roadmap — Eras do Brasil

> Roadmap público do projeto. Para detalhes técnicos com entregas por fase, consulte o [Roadmap de Desenvolvimento](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md).
>
> 📐 **Decisão de pivot:** [ADR-004 — Pivot MMORPG Servidor Go](vibe/decisions/ADR-004-pivot-mmorpg-servidor-go.md)

---

## Status Atual: Fase 0 — Heartbeat (Servidor Go)

---

## Visão Geral das Fases

| Fase | Nome | Tipo | Objetivo |
|------|------|------|----------|
| **0** | Heartbeat | 💻 Código | Servidor Go com tick loop + WebSocket + cliente mínimo |
| **1** | Living World | 💻 Código | Blocos, NPCs com Utility AI, dia/noite por ticks |
| **2** | Observer | 💻 Código | Cliente web observa o mundo vivo em tempo real |
| **3** | Player | 💻 Código | Criação de personagem, D20, combate, inventário, save |
| **4** | Interaction | 💻 Código | Diálogos, fofoca, facções, crafting, Relógio da Ruptura |
| **5** | D20 Full | 💻 Código | 12 classes, 3 Origens, grid tático, Ato 1 completo |
| **6** | Multiplayer | 💻 Código | Múltiplos jogadores, full loot, missões competitivas, eventos globais |

```
Fase 0 ──► Fase 1 ──► Fase 2 ──► Fase 3 ──► Fase 4 ──► Fase 5 ──► Fase 6
```

> Cada fase entrega valor jogável completo. Detalhes em [Roadmap de Desenvolvimento](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md).

---

## Progresso por Área

### Design & Regras (Concluído)
- [x] Livro de Regras (9 capítulos)
- [x] Livro de Classes (12 classes + sistema de Tiers)
- [x] Enredo e Mundo (Ato 1 + mini-campanhas)
- [x] Design Visual (estilo, referências de UI)
- [x] Schemas e Dados Iniciais
- [x] Auditoria do GDD
- [x] Correções pré-backlog: Slots, Defesa Base, XP, Origem, pré-requisitos

### Desenvolvimento (Em Andamento)
- [ ] Fase 0: Heartbeat (servidor Go + WebSocket + tick)
- [ ] Fase 1: Living World (blocos + NPCs + IA)
- [ ] Fase 2: Observer (cliente web observa mundo)
- [ ] Fase 3: Player (D20 + combate + inventário)
- [ ] Fase 4: Interaction (economia + diálogos + facções)
- [ ] Fase 5: D20 Full (12 classes + grid + Ato 1)
- [ ] Fase 6: Multiplayer (full loot + missões + eventos)

---

## Decisões Técnicas

| ADR | Decisão | Status |
|-----|---------|--------|
| [ADR-001](vibe/decisions/ADR-001-organizacao-projeto-unity.md) | ~~Projeto Unity~~ | Substituído por ADR-004 |
| [ADR-002](vibe/decisions/ADR-002-workflow-ui-ux.md) | ~~Wireframes antes de UI~~ | Substituído por ADR-004 |
| [ADR-003](vibe/decisions/ADR-003-estrategia-repositorios.md) | Estratégia monorepo | Ativo |
| [ADR-004](vibe/decisions/ADR-004-pivot-mmorpg-servidor-go.md) | Pivot MMORPG — Servidor Go + Cliente Web | **Ativo** |

---

**Última atualização:** 2026-03-07
