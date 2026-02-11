# 🗺️ Roadmap — Eras do Brasil

> Roadmap público do projeto. Para detalhes técnicos completos, consulte o [Roadmap de Desenvolvimento](gdd/99_Meta_e_Backlog/02_Roadmap_Desenvolvimento.md).
>
> 🔴 **Retomando o projeto?** Comece pelo [Guia de Retomada](docs/GUIA_RETOMADA.md) — timeline cronológica com tudo que precisa ser feito, na ordem exata.

---

## Status Atual: Fase 0 — POCs + Correções GDD

Estamos na fase de **Provas de Conceito**, validando riscos técnicos isolados em Unity/C# antes de montar o jogo completo. Em paralelo, resolvendo as recomendações da [Auditoria do GDD (PR #1)](gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md).

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

### 🚧 Correções Pós-Auditoria (Sprint 1–2)
- [x] Definir slots de habilidades herdadas (limite por Tier)
- [x] Harmonizar fórmula de Defesa Base (Cap. 2 = Cap. 9)
- [x] Reduzir sobreposição Cap. 5 vs Cap. 8
- [ ] Criar sistema de XP e progressão de nível
- [ ] Definir mecânica de troca de Origem (Espelho do Eco)
- [ ] Definir pré-requisitos multi-class para Tiers 2/3

### 🚧 Livros Auxiliares Prioritários (Sprint 3)
- [ ] Livro de Habilidades (consolidado das 12 classes)
- [ ] Livro de Itens e Equipamentos (10-15 itens MVP)
- [ ] Livro de Proficiências de Vida
- [ ] Bestiário Ato 1 (5+ inimigos)

### 🚧 Fase 0: POCs (Sprints 4–6)
38 provas de conceito organizadas em 8 módulos:

| Módulo | Descrição | POCs | Status |
|--------|-----------|------|--------|
| A | Motor de Regras (C# puro) | 01–06 | 🔲 |
| B | Mundo e Tempo | 07–11 | 🔲 |
| C | NPCs e IA | 12–16 | 🔲 |
| D | Combate | 17–23 | 🔲 |
| E | Economia e Crafting | 24–27 | 🔲 |
| F | UI e Visual | 28–32 | 🔲 |
| G | Persistência e Rede | 33–36 | 🔲 |
| H | Missões e Narrativa | 37–38 | 🔲 |

### 📋 Fase 1: MVP — "O Despertar"
Loop jogável de 15–30 minutos:
- [ ] 1 Origem (Indígena), 1 Classe (Guerreiro Tribal)
- [ ] 3 Blocos (Vila, Floresta, Ruínas)
- [ ] Combate estático + Inventário + Save/Load
- [ ] HUD + Mapa de Nós (texto)

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
- [x] Sprint 1: Slots de habilidades, Defesa Base, referências cruzadas
- [ ] Sprint 2: Sistema de XP, troca de Origem, pré-requisitos
- [ ] Livros Auxiliares prioritários (4 livros)

### Desenvolvimento
- [ ] Setup do projeto Unity
- [ ] POCs Módulo A (Motor de Regras)
- [ ] POCs Módulo B (Mundo e Tempo)
- [ ] POCs restantes (C–H)
- [ ] Integração MVP

---

**Última atualização:** 2026-02-11 (Sprint 1 concluída)
