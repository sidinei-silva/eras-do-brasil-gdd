# Backlog — Eras do Brasil

**Última atualização:** 2026-02-11

> 📌 Para a timeline completa e detalhada, consulte o [Guia de Retomada](../docs/GUIA_RETOMADA.md).
> As tarefas abaixo estão ordenadas **cronologicamente** — faça na ordem listada.

---

## 🔴 Sprint 1 — Correções do GDD (Fazer AGORA)

> Pré-requisito: Nenhum. É a primeira coisa a fazer.

- [ ] Definir slots de habilidades herdadas (limite por Tier) — `gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md`
- [ ] Reduzir sobreposição Cap. 5 vs Cap. 8 (referências cruzadas) — `gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md`
- [ ] Harmonizar fórmula de Defesa Base (Cap. 2 = Cap. 9) — `gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md`
- [ ] Atualizar `gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md` marcando itens resolvidos

## 🔴 Sprint 2 — Sistema de Progressão (Fazer DEPOIS da Sprint 1)

> Pré-requisito: Sprint 1

- [ ] Criar sistema de XP e progressão de nível — nova seção no Cap. 3 ou arquivo dedicado
- [ ] Definir mecânica de troca de Origem (Espelho do Eco) — Livro de Classes ou Cap. 3
- [ ] Definir pré-requisitos multi-class para Tiers 2/3 — `gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md`
- [ ] Atualizar `gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md` marcando itens resolvidos

## 🟡 Sprint 3 — Livros Auxiliares Prioritários (Paralelo com Sprint 4)

> Pré-requisito: Sprint 2 (sistema de XP definido)

- [ ] Criar Livro de Habilidades — `gdd/05_Livros_Auxiliares/02_Livro_de_Habilidades.md`
- [ ] Criar Livro de Itens e Equipamentos — `gdd/05_Livros_Auxiliares/03_Livro_de_Itens_e_Equipamentos.md`
- [ ] Criar Livro de Proficiências de Vida — `gdd/05_Livros_Auxiliares/04_Livro_de_Proficiencias_de_Vida.md`
- [ ] Criar Bestiário Ato 1 — `gdd/05_Livros_Auxiliares/05_Bestiario_Ato1.md`
- [ ] Atualizar `gdd/README.md` com links para os novos livros

---

## 🟡 Sprint 4 — Setup Unity + POCs Fundação

> Pré-requisito: Sprint 2

### Setup & Infraestrutura
- [ ] Criar projeto Unity (versão LTS)
- [ ] Configurar estrutura de pastas Unity
- [ ] Configurar .gitignore para Unity
- [ ] Criar cena de teste para POCs

### POCs Módulo A — Motor de Regras (🟢 Core)
- [ ] POC 01: Fundação de Dados — ScriptableObjects + JSON pipeline
- [ ] POC 02: Motor D20 — Rolagens, modificadores, críticos
- [ ] POC 03: Atributos e Criação — Point-buy (27 pts), modificadores
- [ ] POC 06: Matriz de Itens 5×5 — Qualidade × Raridade

## 🟡 Sprint 5 — POCs Mundo e Combate

> Pré-requisito: Sprint 4

### POCs Módulo B — Mundo e Tempo (🟢 Core)
- [ ] POC 07: Motor de Ticks — Relógio universal, dia/noite
- [ ] POC 08: Navegação por Blocos — Grafo de mundo, custo por terreno

### POCs Módulo D — Combate (🟢 Core)
- [ ] POC 17: Combate Estático — Loop completo com D20
- [ ] POC 18: Status e Condições — Efeitos por turno
- [ ] POC 19: Habilidades em Combate — Mana, AoE, fadiga

## 🟡 Sprint 6 — POCs Economia e Persistência

> Pré-requisito: Sprint 5

### POCs Módulo E — Economia (🟢 Core)
- [ ] POC 24: Inventário — Equipar/desequipar, peso

### POCs Módulo F — UI (🟢 Core)
- [ ] POC 28: HUD Principal — Barras, relógio, recursos

### POCs Módulo G — Persistência (🟢 Core)
- [ ] POC 33: Save/Load — JSON local

---

## 🟡 Sprint 7 — MVP "O Despertar"

> Pré-requisito: Sprints 4, 5 e 6

- [ ] Integrar POCs no projeto principal (cena MVP_Main)
- [ ] Primeiro playtest (3+ runs do core loop)
- [ ] Build funcional exportável

---

## 🔵 Futuro (Após MVP)

### Sprint 8 — Tier 2 e Ato 2 (NÃO fazer agora)
- [ ] Detalhar habilidades de Tier 2 para as 12 classes
- [ ] Criar Reaction Abilities (1 por classe)
- [ ] POC 04: Tier Scaling — Evolução Tier 1→3
- [ ] POC 05: Herança de Habilidades — Troca de classe, ativas vs passivas
- [ ] Criar Livro de Magias e Rituais
- [ ] Criar Livro de Receitas de Crafting

### POCs Fase 2 (Pré-Alpha)
- [ ] POC 09: Eventos de Mundo
- [ ] POC 10: Relógio da Ruptura
- [ ] POC 12: Rotinas de NPCs
- [ ] POC 16: Diálogos Ramificados
- [ ] POC 20: Loot e Recompensas
- [ ] POC 25: Coleta e Proficiências
- [ ] POC 32: Criação de Personagem (UI)

### POCs Fase 3+ (Alpha/Beta/Release)
- [ ] POC 11: Clima e Maré
- [ ] POC 13: Utility AI
- [ ] POC 14: Sistema de Fofoca
- [ ] POC 15: Facções e Reputação
- [ ] POC 21–23: Grid Tático, Pathfinding, Combate Espacial
- [ ] POC 26–27: Crafting, Comércio
- [ ] POC 29–31: Mapa de Nós, Tela de Cena, Tela de Combate
- [ ] POC 34–36: P2P, Sincronia, Trade
- [ ] POC 37–38: Quests, Mini-Campanha

---

**Gerenciado por:** @tech-lead
**Referência:** [Guia de Retomada](../docs/GUIA_RETOMADA.md) · [Roadmap completo](../gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md) · [POCs](../pocs/README.md)
