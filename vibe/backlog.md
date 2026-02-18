# Backlog — Eras do Brasil

**Última atualização:** 2026-02-17

> 📌 Para a timeline completa e detalhada, consulte o [Guia de Retomada](../docs/GUIA_RETOMADA.md).
> 📌 Para o roadmap público, consulte o [ROADMAP.md](../ROADMAP.md).
> 📌 Backlog completo com 62 issues no [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10).
>
> As tarefas abaixo estão ordenadas **cronologicamente** — faça na ordem listada.

---

## ✅ Pré-Backlog — Correções do GDD (CONCLUÍDAS)

> Estas correções foram feitas ANTES do backlog ser criado no GitHub.

- [x] Definir slots de habilidades herdadas (limite por Tier) — `gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md`
- [x] Reduzir sobreposição Cap. 5 vs Cap. 8 (referências cruzadas) — `gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md`
- [x] Harmonizar fórmula de Defesa Base (Cap. 2 = Cap. 9) — `gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md`
- [x] Criar sistema de XP e progressão de nível — `gdd/01_Livro_de_Regras/03B_Progressao_e_Experiencia.md`
- [x] Definir mecânica de troca de Origem (Espelho do Eco) — `gdd/02_Livro_de_Classes/04_Troca_de_Origem.md`
- [x] Definir pré-requisitos multi-class para Tiers 2/3 — `gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md`

## 🟡 Sprint 0 — Correções de Lore (12 issues: #20–#31)

> **Epic #20** — Correções de Lore e Enredo: Furos e Inconsistências do GDD
> Pré-requisito: Nenhum.

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

## 🟡 Sprint 1 — Livros & Narrativa (12 issues: #32–#36, #60–#66)

> **Epic #32** — Livros Auxiliares Prioritários
> **Epic #60** — Sistema de Diálogos e Narrativa
> Pré-requisito: Sprint 0

**Livros Auxiliares:**
- [ ] Livro de Habilidades — Consolidação das 12 classes Tier 1 (#33)
- [ ] Livro de Itens e Equipamentos — Catálogo MVP Ato 1 (#34)
- [ ] Livro de Proficiências de Vida — Coleta, Produção e Receitas (#35)
- [ ] Bestiário Ato 1 — Inimigos, Encontros e Loot (#36)

**Sistema de Diálogos:**
- [ ] Livro de Diálogos e Narrativa — Guia de Estilo de Escrita (#61)
- [ ] Schema JSON para DialogueTree (#62)
- [ ] Formato de Texto Narrativo para Tela de Cena (#63)
- [ ] Diálogos JSON dos NPCs da Vila de São Tomé (#64)
- [ ] Diálogos completos da mini-campanha "O Caçador que Não Voltou" (#65)
- [ ] Integração Quest → Dialogue (#66)

## 🟡 Sprint 2 — Fundação Unity (13 issues: #37–#43, #67–#70, #80–#81)

> **Epic #37** — Setup Unity + POCs Fundação (Módulo A)
> **Epic #67** — Schemas JSON e Dados Estruturais Faltantes
> Pré-requisito: Sprint 0
> Organização definida: [ADR-001](decisions/ADR-001-organizacao-projeto-unity.md) · [Estrutura do Projeto](../docs/tech/organizacao-projeto-unity.md)

### Setup & Infraestrutura
- [ ] Setup do Projeto Unity — Estrutura, .gitignore, Namespaces (#38)
- [ ] Wireframes de Baixa Fidelidade — HUD, Mapa, Cena, Combate (#43)

### POCs Módulo A — Motor de Regras (C# puro)
- [ ] POC 01: Fundação de Dados — ScriptableObjects + JSON pipeline (#39)
- [ ] POC 02: Motor D20 — Rolagens, modificadores, críticos (#40)
- [ ] POC 03: Atributos e Criação — Point-buy (27 pts), modificadores (#41)
- [ ] POC 04: Tier Scaling — Progressão por Tiers e Curvas de XP (#80)
- [ ] POC 05: Herança de Habilidades — Dom da Revivência e Troca de Classes (#81)
- [ ] POC 06: Matriz de Itens 5×5 — Qualidade × Raridade (#42)

### Schemas e Dados
- [ ] Schemas JSON: Quest, NPC, Faction, Gossip, Skill, Proficiency, Campaign (#68)
- [ ] NPC Agenda Data — Rotinas dos NPCs da Vila de São Tomé (#69)
- [ ] Expandir Dados Iniciais Ato 1 — Enemy Stats, Itens e Localizações (#70)

## 🟡 Sprint 3 — Mundo & Combate (6 issues: #44–#49)

> **Epic #44** — POCs Mundo e Combate (Módulos B + D)
> Pré-requisito: Sprint 2

**POCs Módulo B — Mundo e Tempo:**
- [ ] POC 07: Motor de Ticks — Relógio universal, dia/noite (#45)
- [ ] POC 08: Navegação por Blocos — Grafo de mundo, custo por terreno (#46)

**POCs Módulo D — Combate:**
- [ ] POC 17: Combate Estático — Loop completo com D20 (#47)
- [ ] POC 18: Status e Condições — Efeitos por turno (#48)
- [ ] POC 19: Habilidades em Combate — Mana, AoE, fadiga (#49)

## 🟡 Sprint 4 — Economia & UI (5 issues: #50–#54)

> **Epic #50** — POCs Economia, UI e Persistência (Módulos E + F + G)
> Pré-requisito: Sprint 3

- [ ] POC 24: Inventário — Equipar/desequipar, peso (#51)
- [ ] Protótipo de UI — Validação de fluxo navegável (#52)
- [ ] POC 28: HUD Principal — Barras, relógio, recursos (#53)
- [ ] POC 33: Save/Load — JSON local (#54)

---

## 🟡 Sprint 5 — MVP "O Despertar" (6 issues: #55–#58, #72–#73)

> **Epic #55** — MVP "O Despertar" (Integração + Playtest)
> Pré-requisito: Sprints 2, 3 e 4

- [ ] Integrar POCs no projeto principal — Cena MVP_Main (#56)
- [ ] Projetar Tutorial / Onboarding Flow (#72)
- [ ] Projetar Main Menu + Pause Menu + Settings (#73)
- [ ] Primeiro playtest — 3+ runs do core loop (#57)
- [ ] Build funcional exportável — Windows Standalone (#58)

---

## 🔵 Sprint 6+ — Futuro (8 issues: #59, #71, #74–#79)

> **Epic #71** — Game Feel: Infraestrutura de Jogo
> **Meta-Issue #59** — Mapeamento Futuro: Tudo Além do MVP

- [ ] Sistema de Áudio — Música, SFX e Ambientação (#74)
- [ ] Mecânica de Morte do Jogador — Game Over / Respawn (#75)
- [ ] Loading Screens com Dicas de Lore (#76)
- [ ] Estratégia de Localização i18n (#77)
- [ ] Accessibility Features — Fonte, Daltonismo, Controles (#78)
- [ ] Expandir Habilidades Tier 1 + Reaction Abilities + Scaling (#79)

### Após MVP — Tier 2 e Ato 2 (NÃO fazer agora)
- [ ] Detalhar habilidades de Tier 2 para as 12 classes
- [ ] Criar Reaction Abilities (1 por classe)
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
**Referência:** [ROADMAP.md](../ROADMAP.md) · [Guia de Retomada](../docs/GUIA_RETOMADA.md) · [POCs](../pocs/README.md) · [ADRs](decisions/) · [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10)
