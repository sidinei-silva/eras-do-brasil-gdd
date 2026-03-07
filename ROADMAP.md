# 🗺️ Roadmap — Eras do Brasil

> Roadmap público do projeto. Para o guia detalhado com **todas as tarefas na ordem exata**, consulte o [Guia de Retomada](docs/GUIA_RETOMADA.md).
>
> 🔗 **Backlog completo:** [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10) — 62 issues (#20–#81)
> 📐 **Roadmap técnico com POCs:** [Roadmap de Desenvolvimento](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md)
> 📋 **Progresso das POCs:** [POCs README](pocs/README.md)

---

## Status Atual: Sprint 0 — Correções de Lore + Planejamento

---

## Visão Geral das Fases

| Sprint | Nome | Tipo | Issues | Pré-requisito |
|--------|------|------|--------|---------------|
| **0** | Correções de Lore | 📝 Doc | #20–#31 (12) | Nenhum |
| **1** | Livros & Narrativa | 📝 Doc | #32–#36, #60–#66 (12) | Sprint 0 |
| **2** | Fundação Unity | 💻 Código | #37–#43, #67–#70, #80–#81 (13) | Sprint 0 |
| **3** | Mundo & Combate | 💻 Código | #44–#49 (6) | Sprint 2 |
| **4** | Economia & UI | 💻 Código | #50–#54 (5) | Sprint 3 |
| **5** | MVP "O Despertar" | 💻 Código | #55–#58, #72–#73 (6) | Sprint 4 |
| **6+** | Futuro | 📝+💻 | #59, #71, #74–#79 (8) | Sprint 5 |

```
Sprint 0 ──► Sprint 1 (paralelo com Sprint 2)
   │
   └──► Sprint 2 ──► Sprint 3 ──► Sprint 4 ──► Sprint 5 ──► Sprint 6+
```

> Para detalhes de cada Sprint (tarefas, critérios de aceite, fontes), consulte o [Guia de Retomada](docs/GUIA_RETOMADA.md).

---

## Fases Pós-MVP

| Fase | Nome | Objetivo |
|------|------|----------|
| **2** | Pré-Alpha — "O Mundo Vivo" | NPCs, economia, Relógio da Ruptura, 3 Origens, 8 blocos |
| **3** | Alpha — "O Jogo Ganha Vida" | Pixel art, 12 classes Tier 1, Utility AI, campanha completa |
| **4** | Beta — "A Tática" | Grid isométrico, combate posicional, 18 mini-campanhas |
| **5** | Release — "A Raiz Conecta" | Co-op P2P, polimento, Acesso Antecipado (Steam) |

> Detalhes das fases no [Roadmap de Desenvolvimento](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md).

---

## Progresso por Área

### Design & Regras
- [x] Livro de Regras (9 capítulos)
- [x] Livro de Classes (12 classes + sistema de Tiers)
- [x] Enredo e Mundo (Ato 1 + mini-campanhas)
- [x] Design Visual (estilo, UI Fase 1 e 2)
- [x] Schemas e Dados Iniciais
- [x] Auditoria do GDD (PR #1)
- [x] Correções pré-backlog: Slots, Defesa Base, XP, Origem, pré-requisitos
- [ ] Sprint 0: Correções de lore (12 issues)
- [ ] Sprint 1: Livros auxiliares (4) + Sistema de diálogos (7 issues)

### Desenvolvimento
- [ ] Sprint 2: Setup Unity, POCs 01–06, schemas JSON, wireframes (13 issues)
- [ ] Sprint 3: POCs Mundo (07–08) + Combate (17–19) (6 issues)
- [ ] Sprint 4: POCs Economia (24), UI (28, protótipo), Save/Load (33) (5 issues)
- [ ] Sprint 5: Integração MVP, tutorial, menus, playtest, build (6 issues)
- [ ] Sprint 6+: Game Feel, áudio, i18n, acessibilidade (8 issues)

---

## Decisões Técnicas

| ADR | Decisão | Documento |
|-----|---------|-----------|
| [ADR-001](vibe/decisions/ADR-001-organizacao-projeto-unity.md) | Projeto Unity único para POCs e jogo final | [Organização do Projeto](docs/tech/organizacao-projeto-unity.md) |
| [ADR-002](vibe/decisions/ADR-002-workflow-ui-ux.md) | Wireframes + protótipos antes de implementar UI | [Workflow UI/UX](docs/tech/workflow-ui-ux.md) |
| [ADR-003](vibe/decisions/ADR-003-estrategia-repositorios.md) | Estratégia monorepo | — |

---

**Última atualização:** 2026-03-07
