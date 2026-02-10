# POC 12 — Rotinas de NPCs

> **Módulo C:** NPCs e IA
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar o sistema de rotinas diárias de NPCs dirigido por Ticks, onde cada NPC segue uma agenda de localizações ao longo do dia, criando a sensação de um "mundo vivo".

## Contexto

Valida o sistema de mundo vivo e comportamento de NPCs definido no GDD:

- [Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)

NPCs com rotinas são o que diferencia um mundo estático de um mundo vivo. O Ferreiro que abre a forja de manhã, o Pescador que sai ao mar de madrugada, o Curandeiro que coleta ervas ao entardecer — tudo isso dá vida ao mundo de Eras do Brasil.

## Pré-requisitos

- **POC 07** — Motor de Ticks (base temporal para rotinas)
- **POC 08** — Navegação por Blocos (NPCs se movem entre blocos)

## Escopo

### ✅ Dentro do escopo

- NPCSchedule: agenda diária com entradas (Tick, Localização, Ação)
- RoutineSystem: máquina de estados dirigida por Ticks
- NPCLocationTracker: rastreamento de posição do NPC
- Múltiplas entradas de rotina por NPC
- Log de movimentação no console

### ❌ Fora do escopo

- IA adaptativa / Utility AI (ver POC 13)
- Diálogos com NPCs (ver POC 16)
- Animações e representação visual
- Interrupção de rotina por eventos

## Critério de Aceite

- [ ] NPC possui agenda diária configurável
- [ ] NPC Ferreiro **sai de casa** no Tick 10
- [ ] NPC Ferreiro **vai à forja** no Tick 20
- [ ] NPC Ferreiro **volta para casa** no Tick 50
- [ ] Posição do NPC é rastreada e consultável a qualquer momento
- [ ] Console exibe movimentações em tempo real (por Tick)

## Estrutura Sugerida

```
pocs/12-rotinas-npcs/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── NPC/
│       │   ├── NPCSchedule.cs             # Agenda diária do NPC
│       │   ├── RoutineEntry.cs            # Entrada individual da rotina
│       │   ├── NPCRoutineRunner.cs        # Executor de rotinas (state machine)
│       │   └── NPCLocationTracker.cs      # Rastreador de posição
│       └── Tests/
│           └── RoutineTestRunner.cs       # Simulação de rotinas
```

## Referências

- [Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
- [Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)
