# Status do Projeto — Eras do Brasil

**Última atualização:** 2026-02-11

## 🎯 Fase Atual

**Fase 0: Correções GDD + POCs** — Sprints 1 e 2 concluídas! GDD 100% consistente. Pronto para iniciar os Livros Auxiliares (Sprint 3) e/ou Setup Unity (Sprint 4).

> 🔴 **Retomando?** Comece pelo [Guia de Retomada](../docs/GUIA_RETOMADA.md)

## 📊 Progresso Geral

| Área | Status | Progresso |
|------|--------|-----------|
| **GDD (Design)** | ✅ Completo | 100% (todas correções pós-auditoria concluídas) |
| **Auditoria (PR #1)** | ✅ Mergeado | 10/12 correções aplicadas, 2 recomendações futuras |
| **Livros Auxiliares** | ⚠️ Parcial | 1/7 (apenas Atlas do Eco) |
| **Schemas e Dados** | ✅ Completo | 100% |
| **Roadmap** | ✅ Consolidado | 100% |
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

## 🔥 Foco Atual — Sprints de Retomada

| Sprint | Foco | Status |
|--------|------|--------|
| **Sprint 1** | Correções do GDD (slots, Defesa Base, sobreposição) | ✅ Concluída |
| **Sprint 2** | Sistema de XP, troca de Origem, pré-requisitos multi-class | ✅ Concluída |
| **Sprint 3** | Livros Auxiliares (Habilidades, Itens, Proficiências, Bestiário) | 🔲 Pendente |
| **Sprint 4** | Setup Unity + POCs Módulo A (Motor de Regras) | 🔲 Pendente |
| **Sprint 5** | POCs Módulo B (Mundo) + D (Combate) | 🔲 Pendente |
| **Sprint 6** | POCs Módulo E (Economia) + G (Save/Load) | 🔲 Pendente |
| **Sprint 7** | MVP "O Despertar" — Integração | 🔲 Pendente |

> Detalhes completos em [Guia de Retomada](../docs/GUIA_RETOMADA.md)

## 📋 Próximos Marcos

| Marco | Descrição | Dependências |
|-------|-----------|--------------|
| GDD 100% consistente | Correções pós-auditoria (Sprint 1–2) | Nenhuma |
| Livros Auxiliares MVP | 4 livros prioritários (Sprint 3) | Sprint 2 |
| POC 01 concluída | Pipeline ScriptableObject → JSON funcional | Setup Unity |
| Módulo A completo | 4 POCs de lógica pura (C# sem gráficos) | POC 01 |
| MVP "O Despertar" | Loop jogável de 15-30 min | 12 POCs core |

## ⚠️ Bloqueios Conhecidos

- Setup do projeto Unity ainda não iniciado
- 7 recomendações da auditoria pendentes (nenhuma bloqueia o início das POCs, mas as Sprints 1-2 devem ser feitas antes do MVP)

## 🎉 Conquistas Recentes

- ✅ GDD completo (9+ livros, 50+ documentos)
- ✅ 38 POCs definidas com READMEs detalhados
- ✅ Roadmap de desenvolvimento consolidado (6 fases)
- ✅ Estrutura de pastas organizada
- ✅ Auditoria do GDD concluída (PR #1 mergeado — 4 correções, 7 recomendações)
- ✅ Guia de Retomada criado com timeline cronológica detalhada
- ✅ **Sprint 1 concluída** — Slots de habilidades herdadas, Defesa Base harmonizada, referências cruzadas Cap. 5/8
- ✅ **Sprint 2 concluída** — Sistema de XP/Níveis, Troca de Origem (Espelho do Eco), Pré-requisitos Multi-Class

## 📝 Notas

- Stack definida: Unity (LTS) + C# + NGO para rede P2P
- Filosofia: desenvolvimento progressivo, peça por peça
- IA centralizada no GitHub Copilot (VS Code)
- **Tier 2 das classes NÃO deve ser feito agora** — é do Ato 2, após MVP

---
Este arquivo é mantido pelo @vibe-keeper. Consulte para ter um snapshot do estado atual do projeto.
