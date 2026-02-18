# 🗺️ Roadmap — Eras do Brasil

> Roadmap público do projeto. Para detalhes técnicos completos, consulte o [Roadmap de Desenvolvimento](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md).
>
> 🔴 **Retomando o projeto?** Comece pelo [Guia de Retomada](docs/GUIA_RETOMADA.md) — timeline cronológica com tudo que precisa ser feito, na ordem exata.

---

## Status Atual: Sprint 0 — Correções de Lore + Planejamento

O backlog completo do projeto está no [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10) com **62 issues** (#20-#81), organizadas em **7 sprints** (0–6+) e **9 Epics**.

👉 [Ver progresso das POCs](pocs/README.md)
👉 [Ver Guia de Retomada](docs/GUIA_RETOMADA.md)

---

## Visão Geral das Fases

### ✅ Pré-Produção (Concluída)
- [x] Game Design Document completo (9+ livros)
- [x] 12 classes Tier 1 documentadas (3 origens)
- [x] Enredo do Ato 1 + 18 mini-campanhas
- [x] Design visual e UI definidos
- [x] Schemas JSON e dados iniciais
- [x] Atlas do Eco (mapa do Ato 1)
- [x] Roadmap de desenvolvimento consolidado

### ✅ Auditoria do GDD (PR #1 — Concluída)
- [x] Harmonizar tabela de CD (Cap. 4 vs Cap. 2/9)
- [x] Corrigir referência "Capítulo 9" → "Capítulo 7" (Cap. 4)
- [x] Corrigir "Inteligência" → "Conhecimento" (Ato 1)
- [x] Adicionar mecânica de Esquecimento (Cap. 8.3)

### ✅ Correções Pós-Auditoria (pré-backlog) — CONCLUÍDAS
- [x] Definir slots de habilidades herdadas (limite por Tier)
- [x] Harmonizar fórmula de Defesa Base (Cap. 2 = Cap. 9)
- [x] Reduzir sobreposição Cap. 5 vs Cap. 8
- [x] Criar sistema de XP e progressão de nível
- [x] Definir mecânica de troca de Origem (Espelho do Eco)
- [x] Definir pré-requisitos multi-class para Tiers 2/3

---

### 🚧 Sprint 0 — Correções de Lore (12 issues: #20–#31)
> **Epic #20** — Correções de Lore e Enredo: Furos e Inconsistências do GDD

- [ ] Dom da Revivência: latente ou ativo no Ato 1? (#21)
- [ ] Causa da Ruptura de 1497: definir origem canônica (#22)
- [ ] Motivação da facção Folclórica no Ato 1 (#23)
- [ ] Contradição de Nível para Tier 2/3 entre documentos (#24)
- [ ] "Mana" referenciada sem sistema definido — Fadiga vs Mana (#25)
- [ ] Definir "Dano Espiritual" e "Exaustão Espiritual" (#26)
- [ ] Escala de Ticks — 500 Ticks = quanto tempo real/narrativo? (#27)
- [ ] Guardião da Fenda — identidade, backstory e stats (#28)
- [ ] Definir ou remover "Sanidade/Moral" como sistema (#29)
- [ ] Definir ou remover conceito "Ecoera" (#30)
- [ ] 12 mini-campanhas sem impacto sinérgico no Ato 1 (#31)

### 🚧 Sprint 1 — Livros & Narrativa (12 issues: #32–#36, #60–#66)
> **Epic #32** — Livros Auxiliares Prioritários
> **Epic #60** — Sistema de Diálogos e Narrativa (maior gap do projeto)

**Livros Auxiliares:**
- [ ] Livro de Habilidades — Consolidação das 12 classes Tier 1 (#33)
- [ ] Livro de Itens e Equipamentos — Catálogo MVP Ato 1 (#34)
- [ ] Livro de Proficiências de Vida — Coleta, Produção e Receitas (#35)
- [ ] Bestiário Ato 1 — Inimigos, Encontros e Loot (#36)

**Sistema de Diálogos:**
- [ ] Livro de Diálogos e Narrativa — Guia de Estilo de Escrita (#61)
- [ ] Schema JSON para DialogueTree (Árvores de Diálogo) (#62)
- [ ] Formato de Texto Narrativo para Tela de Cena (#63)
- [ ] Diálogos JSON dos NPCs da Vila de São Tomé (primeiro hub) (#64)
- [ ] Diálogos completos da mini-campanha "O Caçador que Não Voltou" (#65)
- [ ] Integração Quest → Dialogue (aceitar missão via diálogo) (#66)

### 🚧 Sprint 2 — Fundação Unity (13 issues: #37–#43, #67–#70, #80–#81)
> **Epic #37** — Setup Unity + POCs Fundação (Módulo A)
> **Epic #67** — Schemas JSON e Dados Estruturais Faltantes

**Setup e Infraestrutura:**
- [ ] Setup do Projeto Unity — Estrutura, .gitignore, Namespaces (#38)
- [ ] Wireframes de Baixa Fidelidade — HUD, Mapa, Cena, Combate (#43)

**POCs Módulo A — Motor de Regras (C# puro):**
- [ ] POC 01: Fundação de Dados — ScriptableObjects + JSON Pipeline (#39)
- [ ] POC 02: Motor D20 — Rolagens, Modificadores e Críticos (#40)
- [ ] POC 03: Atributos e Criação — Point-Buy e Modificadores (#41)
- [ ] POC 04: Tier Scaling — Progressão por Tiers e Curvas de XP (#80)
- [ ] POC 05: Herança de Habilidades — Dom da Revivência e Troca de Classes (#81)
- [ ] POC 06: Matriz de Itens 5×5 — Qualidade × Raridade (#42)

**Schemas e Dados:**
- [ ] Schemas JSON: Quest, NPC, Faction, Gossip, Skill, Proficiency, Campaign (#68)
- [ ] NPC Agenda Data — Rotinas dos NPCs da Vila de São Tomé (#69)
- [ ] Expandir Dados Iniciais Ato 1 — Enemy Stats, Itens e Localizações (#70)

### 🚧 Sprint 3 — Mundo & Combate (6 issues: #44–#49)
> **Epic #44** — POCs Mundo e Combate (Módulos B + D)

**POCs Módulo B — Mundo e Tempo:**
- [ ] POC 07: Motor de Ticks — Relógio Universal e Ciclo Dia/Noite (#45)
- [ ] POC 08: Navegação por Blocos — Grafo de Mundo e Custo por Terreno (#46)

**POCs Módulo D — Combate:**
- [ ] POC 17: Combate Estático — Loop Completo por Turnos com D20 (#47)
- [ ] POC 18: Status e Condições — Buffs, Debuffs e Efeitos por Turno (#48)
- [ ] POC 19: Habilidades em Combate — Mana, AoE e Fadiga (#49)

### 🚧 Sprint 4 — Economia & UI (5 issues: #50–#54)
> **Epic #50** — POCs Economia, UI e Persistência (Módulos E + F + G)

- [ ] POC 24: Inventário — Equipar, Peso e Slots (#51)
- [ ] POC 28: HUD Principal — Barras, Relógio e Recursos (#53)
- [ ] POC 33: Save/Load — Persistência JSON Local (#54)
- [ ] Protótipo de UI — Validação de Fluxo Navegável (#52)

### 📋 Sprint 5 — MVP "O Despertar" (6 issues: #55–#58, #72–#73)
> **Epic #55** — MVP "O Despertar" (Integração + Playtest)

Loop jogável de 15–30 min: 1 Origem (Indígena), 1 Classe (Guerreiro Tribal), 3 Blocos (Vila, Floresta, Ruínas).

- [ ] Integrar POCs no Projeto Principal (Cena MVP_Main) (#56)
- [ ] Projetar Tutorial / Onboarding Flow (#72)
- [ ] Projetar Main Menu + Pause Menu + Settings (#73)
- [ ] Primeiro Playtest — 3+ Runs do Core Loop (#57)
- [ ] Build Funcional Exportável (Windows Standalone) (#58)

### 📋 Sprint 6+ — Futuro (8 issues: #59, #71, #74–#79)
> **Epic #71** — Game Feel: Infraestrutura de Jogo
> **Meta-Issue #59** — Mapeamento Futuro: Tudo Além do MVP

- [ ] Sistema de Áudio — Música, SFX e Ambientação (#74)
- [ ] Mecânica de Morte do Jogador (Game Over / Respawn) (#75)
- [ ] Loading Screens com Dicas de Lore (#76)
- [ ] Estratégia de Localização i18n (#77)
- [ ] Accessibility Features (Fonte, Daltonismo, Controles) (#78)
- [ ] Expandir Habilidades Tier 1 + Reaction Abilities + Scaling (#79)

> **Organização:** Projeto Unity único para POCs e jogo final. Detalhes em [ADR-001](vibe/decisions/ADR-001-organizacao-projeto-unity.md) e [Organização do Projeto](docs/tech/organizacao-projeto-unity.md).
>
> **UI/UX:** Wireframes na Sprint 2 (#43), protótipos na Sprint 4 (#52), validação na Sprint 5. Detalhes em [ADR-002](vibe/decisions/ADR-002-workflow-ui-ux.md) e [Workflow UI/UX](docs/tech/workflow-ui-ux.md).

---

### 📋 Fase 2: Pré-Alpha — "O Mundo Vivo"
- [ ] Relógio da Ruptura (500 Ticks)
- [ ] NPCs com rotinas e diálogos
- [ ] Economia: coleta, crafting, comércio
- [ ] 3 Origens com 1 classe cada
- [ ] 8 blocos do Ato 1 navegáveis

### 📋 Fase 3: Alpha — "O Jogo Ganha Vida"
- [ ] Pixel art para cenários, personagens e inimigos
- [ ] 12 classes Tier 1 + evolução Tier 2
- [ ] Utility AI + Sistema de Fofoca
- [ ] Campanha "A Primeira Ruptura" completa

### 📋 Fase 4: Beta — "A Tática"
- [ ] Grid isométrico com pathfinding A*
- [ ] Combate posicional (cobertura, flanco, AoE)
- [ ] 18 mini-campanhas balanceadas

### 📋 Fase 5: Release — "A Raiz Conecta"
- [ ] Modo cooperativo P2P
- [ ] Sincronia de Ticks e combate multiplayer
- [ ] Trade atômico (sem duplicação)
- [ ] Polimento e Acesso Antecipado (Steam)

---

## 📊 Progresso por Área

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

## 📐 Decisões Técnicas

| ADR | Decisão | Documento |
|-----|---------|-----------|
| [ADR-001](vibe/decisions/ADR-001-organizacao-projeto-unity.md) | Projeto Unity único para POCs e jogo final | [Organização do Projeto](docs/tech/organizacao-projeto-unity.md) |
| [ADR-002](vibe/decisions/ADR-002-workflow-ui-ux.md) | Wireframes + protótipos antes de implementar UI | [Workflow UI/UX](docs/tech/workflow-ui-ux.md) |

---

**Última atualização:** 2026-02-17 (Sprints renumeradas sequencialmente 0–6+, ROADMAP alinhado com 62 issues do Project #10)
