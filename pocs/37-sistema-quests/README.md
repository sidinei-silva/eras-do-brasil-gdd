# POC 37 — Sistema de Quests

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | H: Missões e Narrativa         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o sistema de quests com máquina de estados (Oculta → Ativa → Concluída), gatilhos baseados em tick, bloco e item, rastreamento de objetivos e distribuição de recompensas.

## Contexto

Valida a regra do GDD sobre **enredo e mundo**: quests são a principal forma de narrativa e progressão, podendo ser ativadas por diversos gatilhos (tempo, localização, posse de itens) e possuem múltiplos estados.

📖 Referência: [00 — Conceitos Centrais do Mundo](../../gdd/03_Enredo_e_Mundo/00_Conceitos_Centrais_do_Mundo.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 07  | Motor de Ticks | Gatilhos baseados em tick/tempo |
| 08  | Navegação por Blocos | Gatilhos baseados em bloco/localização |
| 09  | Eventos de Mundo | Sistema de eventos para gatilhos de quest |
| 24  | Inventário | Gatilhos e recompensas baseados em itens |

## Escopo

### ✅ Dentro do escopo

- `QuestData` — definição de quest (objetivos, gatilhos, recompensas)
- `QuestState` — enum de estados (Hidden, Active, Completed, Failed)
- `QuestTracker` — rastreamento de objetivos e progresso
- `QuestTrigger` — sistema de gatilhos (por tick, bloco, item, evento)
- `QuestReward` — distribuição de recompensas (XP, itens, reputação)
- `QuestLogUI` — interface de log de quests do jogador

### ❌ Fora do escopo

- Quests ramificadas com múltiplos finais
- Quest markers no mapa
- Quests compartilhadas em multiplayer
- Geração procedural de quests

## Critério de Aceite

- [ ] Quest possui estados: Oculta → Ativa → Concluída (ou Falhada)
- [ ] Gatilho por tick ativa quest ao atingir determinado momento
- [ ] Gatilho por bloco ativa quest ao entrar em determinado local
- [ ] Gatilho por item ativa quest ao obter determinado item
- [ ] Objetivos da quest são rastreados e atualizados em tempo real
- [ ] Recompensas são distribuídas ao completar a quest (XP, itens)
- [ ] Log de quests exibe quests ativas, completadas e seus objetivos
- [ ] Transições de estado são logadas para debug

## Estrutura Sugerida

```
pocs/37-sistema-quests/
├── README.md
└── Assets/
    └── Scripts/
        ├── QuestData.cs          # Definição de quest
        ├── QuestState.cs         # Enum de estados da quest
        ├── QuestTracker.cs       # Rastreamento de objetivos
        ├── QuestTrigger.cs       # Sistema de gatilhos
        ├── QuestReward.cs        # Distribuição de recompensas
        └── QuestLogUI.cs         # Interface de log de quests
```

## Referências

- [00 — Conceitos Centrais do Mundo](../../gdd/03_Enredo_e_Mundo/00_Conceitos_Centrais_do_Mundo.md)
- [04 — Guia de Adaptação de Missões](../../gdd/03_Enredo_e_Mundo/04_Guia_Adaptacao_de_Missoes.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
