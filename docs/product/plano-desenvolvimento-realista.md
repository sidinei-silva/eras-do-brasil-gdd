# 🗓️ Plano de Desenvolvimento Realista — Eras do Brasil

**Data:** 2026-03-07
**Premissa:** 3 noites/semana × ~2h/noite = **~6h/semana** (~24h/mês)

---

## Filosofia: Entregas Tangíveis, Sempre

> O maior risco do projeto não é técnico — é motivacional. Com tempo limitado, cada sessão precisa gerar algo **visível** e **jogável**. A regra de ouro: **nunca passe mais de 2 semanas sem algo rodando na tela.**

---

## Calendário Macro (2026)

| Mês | Foco Principal | Entregável |
|-----|---------------|------------|
| **Mar** | Reorganização + Sprint 0 (Lore) + Spin-off 1 | Repo organizado, lore resolvido, card game funcional |
| **Abr** | Sprint 1 (Livros) + Setup Unity | Livros auxiliares, projeto Unity rodando |
| **Mai** | Sprint 2 (POCs 01-03) | Motor de dados + D20 + criação de personagem |
| **Jun** | Sprint 2 (POCs 04-06) + Spin-off 2 | Progressão + itens + idle game protótipo |
| **Jul** | Sprint 3 (POCs 07-08, 17) | Ticks + navegação + primeiro combate |
| **Ago** | Sprint 3 (POCs 18-19) | Combate com status e habilidades |
| **Set** | Sprint 4 (POCs 24, 28, 33) | Inventário + HUD + save/load |
| **Out** | Sprint 5 (MVP "O Despertar") | Loop jogável de 15-30min |
| **Nov** | Playtest + polish | Build Windows exportável |
| **Dez** | Retrospectiva + planejamento 2027 | Decisão sobre próximos passos |

> ⚠️ Este calendário é **otimista**. Se escorregar, a regra é: **terminar a sprint atual antes de começar a próxima**.

---

## Detalhamento por Fase

### Fase 0: Reorganização + Lore (Março 2026) — AGORA

**Semana 1-2: Reorganização (6-12h)**
- [x] Diagnóstico completo do projeto
- [x] ADR-003: Estratégia de repositórios
- [ ] Criar pastas `game/` e `spinoffs/`
- [ ] Atualizar README.md principal
- [ ] Popular `docs/product/` com spec do MVP
- [ ] Documentar contexto do repo legado

**Semana 3-4: Sprint 0 — Lore (6-12h)**
- [ ] Resolver 8 furos de lore (Issues #21-#31)
- [ ] Cada furo = 30-60min de decisão + atualização do GDD
- [ ] Abordagem: ler o furo → decidir → atualizar doc → fechar issue

**Paralelo: Spin-off 1 — Card Game (ver plano de spin-offs)**

### Fase 1: Livros + Setup (Abril 2026)

**Sprint 1 — Livros Auxiliares (~12h)**
- [ ] Livro de Habilidades (#33) — consolidar 12 classes
- [ ] Bestiário Ato 1 (#36) — 10-15 inimigos do MVP
- [ ] Proficiências (#35) — coleta e receitas básicas

**Sprint 1 — Diálogos (parcial, ~6h)**
- [ ] Schema JSON DialogueTree (#62)
- [ ] Guia de estilo de escrita (#61) — mínimo viável

> 💡 **NPC diálogos completos (#64, #65) ficam para depois.** Não bloqueiam código.

**Setup Unity (~6h)**
- [ ] Criar projeto Unity em `game/`
- [ ] Estrutura de pastas conforme ADR-001
- [ ] .gitignore para Unity
- [ ] Cena de teste rodando

### Fase 2: Motor de Regras — POCs 01-06 (Maio-Junho 2026)

**Estas são C# puro — sem gráficos. Ideais para aprender C# moderno.**

- [ ] POC 01: Fundação de Dados (~4h)
- [ ] POC 02: Motor D20 (~4h)
- [ ] POC 03: Atributos e Criação (~6h)
- [ ] POC 04: Tier Scaling (~4h)
- [ ] POC 05: Herança de Habilidades (~6h)
- [ ] POC 06: Matriz de Itens (~4h)

**Cada POC: Ler README → implementar → rodar testes → fechar issue**

### Fase 3: Mundo + Combate — POCs 07-08, 17-19 (Julho-Agosto 2026)

- [ ] POC 07: Motor de Ticks (~6h)
- [ ] POC 08: Navegação por Blocos (~6h)
- [ ] POC 17: Combate Estático (~8h) — **primeiro combate funcional**
- [ ] POC 18: Status e Condições (~4h)
- [ ] POC 19: Habilidades em Combate (~6h)

### Fase 4: Economia + UI + Save (Setembro 2026)

- [ ] POC 24: Inventário (~6h)
- [ ] POC 28: HUD Principal (~8h) — **primeiro visual real**
- [ ] POC 33: Save/Load (~4h)
- [ ] Wireframes HUD, Mapa, Cena, Combate (#43)

### Fase 5: MVP "O Despertar" (Outubro-Novembro 2026)

- [ ] Integrar POCs em cena unificada
- [ ] 1 personagem jogável (Guerreiro Tribal)
- [ ] 3 locais (Vila, Floresta, Ruínas)
- [ ] 1 quest completa ("O Caçador que Não Voltou")
- [ ] Loop: criar personagem → explorar → lutar → completar quest → salvar
- [ ] Playtest com 3+ runs

---

## Regras de Ouro para Sessões de Trabalho

### Estrutura de uma Noite (~2h)

```
[0:00-0:10] Setup: ler project-status.md, relembrar contexto
[0:10-1:45] Trabalho focado (1 tarefa por vez)
[1:45-2:00] Fechamento: atualizar status, anotar próximo passo
```

### Princípios

1. **Uma tarefa por sessão.** Começou, termina. Não deixe coisas pela metade.
2. **Sempre termine com algo rodando.** Pode ser um teste, pode ser um print, mas algo que prove que funciona.
3. **Use Vibe Keeper ao fim de cada sessão.** O `@vibe-keeper` vai salvar seu contexto para a próxima retomada.
4. **Se travou, mude para o spin-off.** Melhor fazer progresso lateral do que ficar parado.
5. **Não perfecione — itere.** POC 01 não precisa ser perfeita. Ela precisa funcionar.

### Padrão de Commits

```
docs: resolve furo de lore #21 — Dom da Revivência latente
gdd: adiciona Livro de Habilidades consolidado
game: implementa POC 01 — Fundação de Dados
spinoff: card-game v0.1 — combate básico funcional
vibe: sessão 2026-03-08 — reorganização do projeto
```

---

## POCs Cortadas do MVP (podem voltar depois)

Estas POCs existem nos specs mas **NÃO** são necessárias para o MVP "O Despertar":

| POC | Motivo do Corte |
|-----|-----------------|
| 09 (Eventos de Mundo) | Bom, não essencial |
| 10 (Relógio da Ruptura) | Complementar, não bloqueia |
| 11 (Clima/Maré) | Polimento, Fase 2 |
| 12-16 (NPCs/IA/Fofoca/Facções/Diálogos) | Mundo Vivo = Fase 2 |
| 20 (Loot) | Pode ser hardcoded no MVP |
| 21-23 (Grid Tático/Pathfinding/Combate Espacial) | MVP usa combate estático |
| 25-27 (Coleta/Crafting/Comércio) | Economia = Fase 2 |
| 29-32 (Mapa/Cena/Combate Tela/Criação) | UI avançada = Fase 2 |
| 34-36 (P2P/Sincronia/Trade) | Multiplayer = Fase 5 |
| 37-38 (Quests/Mini-campanha) | Quest hardcoded no MVP |

**MVP real precisa apenas:** POCs 01, 02, 03, 06, 07, 08, 17, 18, 19, 24, 28, 33 = **12 POCs**

---

## Métricas de Progresso

| Métrica | Como Medir | Meta Mensal |
|---------|-----------|-------------|
| POCs completas | Issues fechadas no GitHub | 2-3 POCs/mês |
| Sessões realizadas | Logs em vibe/sessions/ | 10-12/mês |
| Código novo | Linhas de C# no `game/` | Crescendo |
| Bugs/Furos resolvidos | Issues de Sprint 0 fechadas | 2-3/mês |
| Horas investidas | Estimativa por sessão | ~24h/mês |

---

*Este plano será revisado mensalmente pelo `@vibe-keeper` e ajustado conforme progresso real.*
