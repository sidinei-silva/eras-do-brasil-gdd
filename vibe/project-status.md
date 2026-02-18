# Status do Projeto — Eras do Brasil

**Última atualização:** 2026-02-17

## 🎯 Fase Atual

**Fase 0: Correções GDD + POCs** — Correções pré-backlog concluídas. GDD 100% consistente. Decisões técnicas definidas (ADR-001, ADR-002). Backlog completo com **62 issues** no [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10), organizadas em **7 sprints** (0–6+) e **9 Epics**. Pronto para iniciar Sprint 0 (Correções de Lore).

> 🔴 **Retomando?** Comece pelo [Guia de Retomada](../docs/GUIA_RETOMADA.md)

## 📊 Progresso Geral

| Área | Status | Progresso |
|------|--------|-----------|
| **GDD (Design)** | ✅ Completo | 100% (todas correções pós-auditoria concluídas) |
| **Auditoria (PR #1)** | ✅ Mergeado | 10/12 correções aplicadas, 2 recomendações futuras |
| **Decisões Técnicas** | ✅ Definidas | ADR-001 (Unity único) + ADR-002 (Workflow UI/UX) |
| **Backlog GitHub** | ✅ Completo | 62 issues (#20-#81), 9 Epics, 7 Sprints (0–6+) |
| **Livros Auxiliares** | ⚠️ Parcial | 1/7 (apenas Atlas do Eco) |
| **Schemas e Dados** | ✅ Completo | 100% |
| **Roadmap** | ✅ Consolidado | 100% — alinhado com Project #10 |
| **UI/UX** | 📝 Planejado | Specs do GDD completas, wireframes previstos Sprint 2, protótipos Sprint 4 |
| **POCs** | 🔲 Não iniciado | 0/38 |
| **MVP** | 🔲 Aguardando POCs | 0% |

## 📕 Design Concluído

- ✅ Livro de Regras (9 capítulos)
- ✅ Livro de Classes (12 classes Tier 1 + sistema de Tiers)
- ✅ Enredo e Mundo (Ato 1 + 18 mini-campanhas + linha eco-histórica)
- ✅ Design Visual (estilo, paleta, tipografia, UI Fase 1 e 2)
- ✅ Atlas do Eco Ato 1 (mapa de nós com distâncias)
- ✅ Schemas JSON (ClasseDePersonagem, Item, Inimigo)
- ✅ Game Pitch e Project Plan
- ✅ Auditoria do GDD (PR #1 mergeado)

## 🔥 Foco Atual — Sprints de Produção

| Sprint | Foco | Status |
|--------|------|--------|
| **Sprint 0** | Correções de Lore e Enredo (12 issues) | 🔲 Pendente |
| **Sprint 1** | Livros Auxiliares (4) + Sistema de Diálogos (7 issues) | 🔲 Pendente |
| **Sprint 2** | Setup Unity + POCs Fundação Módulo A (13 issues) | 🔲 Pendente |
| **Sprint 3** | POCs Mundo e Combate — Módulos B + D (6 issues) | 🔲 Pendente |
| **Sprint 4** | POCs Economia, UI e Persistência — Módulos E + F + G (5 issues) | 🔲 Pendente |
| **Sprint 5** | MVP "O Despertar" — Integração + Playtest (6 issues) | 🔲 Pendente |
| **Sprint 6+** | Game Feel: Áudio, i18n, Acessibilidade (8 issues) | 🔲 Futuro |

> Detalhes completos em [ROADMAP.md](../ROADMAP.md) e [Guia de Retomada](../docs/GUIA_RETOMADA.md)

## 📋 Próximos Marcos

| Marco | Descrição | Dependências |
|-------|-----------|--------------|
| Sprint 0 completa | Correções de lore do GDD (12 issues) | Nenhuma |
| Sprint 1 completa | 4 Livros Auxiliares + 7 issues de diálogos | Sprint 0 |
| POC 01 concluída | Pipeline ScriptableObject → JSON funcional | Setup Unity (Sprint 2) |
| Módulo A completo | POCs 01–06 (lógica pura em C#) | Sprint 2 |
| MVP "O Despertar" | Loop jogável de 15-30 min | Sprint 5 |

## ⚠️ Bloqueios Conhecidos

- Nenhum bloqueio ativo — pronto para iniciar Sprint 0

## 🎉 Conquistas Recentes

- ✅ GDD completo (9+ livros, 50+ documentos)
- ✅ 38 POCs definidas com READMEs detalhados
- ✅ Auditoria do GDD concluída (PR #1 mergeado — 4 correções, 7 recomendações)
- ✅ Correções pré-backlog concluídas (slots, Defesa Base, XP, Origem, pré-requisitos)
- ✅ **ADR-001** — Organização do projeto Unity definida (projeto único para POCs e jogo)
- ✅ **ADR-002** — Workflow de UI/UX definido (wireframes, prototipagem, validação)
- ✅ **Backlog completo** — 62 issues (#20-#81) criadas, organizadas em 9 Epics e 7 Sprints
- ✅ **GitHub Project #10** — Todos os campos preenchidos (Sprint, Prioridade, Categoria, Tipo, Esforço)
- ✅ **ROADMAP.md** — Totalmente alinhado com as 62 issues
- ✅ **Website** atualizado com seção de notícias (PR #82 mergeado)

## 📝 Notas

- Stack definida: Unity (LTS) + C# + NGO para rede P2P
- Filosofia: desenvolvimento progressivo, peça por peça
- IA centralizada no GitHub Copilot (VS Code)
- Projeto Unity único para POCs e jogo (ver [ADR-001](decisions/ADR-001-organizacao-projeto-unity.md))
- Workflow de UI/UX integrado às sprints (ver [ADR-002](decisions/ADR-002-workflow-ui-ux.md))
- **Tier 2 das classes NÃO deve ser feito agora** — é do Ato 2, após MVP

---
Este arquivo é mantido pelo @vibe-keeper. Consulte para ter um snapshot do estado atual do projeto.
