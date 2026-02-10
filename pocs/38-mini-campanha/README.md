# POC 38 — Mini-Campanha Completa

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | H: Missões e Narrativa         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar a mini-campanha "O Caçador que Não Voltou" jogável do início ao fim, integrando todas as mecânicas desenvolvidas nas POCs anteriores como teste de integração completo.

## Contexto

Valida a regra do GDD sobre **mini-campanhas indígenas**: a campanha "O Caçador que Não Voltou" é a primeira experiência jogável completa, servindo como teste de integração de todos os sistemas (combate, exploração, NPCs, quests, inventário, etc.).

📖 Referência: [Indígena 01 — O Caçador que Não Voltou](../../gdd/03_Enredo_e_Mundo/1_MiniCampanhas_Indigena/Indigena_01_O_Cacador_que_Nao_Voltou.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| TODAS | Todas as POCs anteriores | Teste de integração end-to-end |

## Escopo

### ✅ Dentro do escopo

- `MiniCampaignRunner` — executor da campanha (orquestra sistemas)
- `CampaignData` — dados da campanha em JSON (cenas, quests, NPCs, combates)
- `CampaignEventHandler` — handler de eventos narrativos da campanha
- `IntegrationTestRunner` — runner de testes de integração automatizados
- Fluxo narrativo completo da campanha
- Múltiplos objetivos de quest interligados
- Encontros de combate com inimigos da campanha
- Interações com NPCs (diálogo, comércio)

### ❌ Fora do escopo

- Outras mini-campanhas além de "O Caçador que Não Voltou"
- Balanceamento fino de dificuldade
- Assets visuais finais (usar placeholders)
- Áudio e música
- Multiplayer cooperativo na campanha

## Critério de Aceite

- [ ] Campanha "O Caçador que Não Voltou" é jogável do início ao fim
- [ ] Criação de personagem funciona antes de iniciar a campanha
- [ ] Navegação pelo mapa de nós funciona entre locais da campanha
- [ ] Cenas de exploração exibem ilustração + texto narrativo
- [ ] Diálogos com NPCs funcionam com opções de resposta
- [ ] Encontros de combate são resolvidos pelo sistema de combate
- [ ] Sistema de quests rastreia objetivos e distribui recompensas
- [ ] Inventário e loot funcionam ao longo da campanha
- [ ] Save/Load preserva o progresso da campanha
- [ ] Todas as mecânicas integradas funcionam sem conflitos

## Estrutura Sugerida

```
pocs/38-mini-campanha/
├── README.md
└── Assets/
    ├── Data/
    │   └── CampaignData.json             # Dados da campanha (cenas, quests, NPCs)
    └── Scripts/
        ├── MiniCampaignRunner.cs         # Executor/orquestrador da campanha
        ├── CampaignData.cs               # Modelo de dados da campanha
        ├── CampaignEventHandler.cs       # Handler de eventos narrativos
        └── IntegrationTestRunner.cs      # Runner de testes de integração
```

## Referências

- [Indígena 01 — O Caçador que Não Voltou](../../gdd/03_Enredo_e_Mundo/1_MiniCampanhas_Indigena/Indigena_01_O_Cacador_que_Nao_Voltou.md)
- [00 — Conceitos Centrais do Mundo](../../gdd/03_Enredo_e_Mundo/00_Conceitos_Centrais_do_Mundo.md)
- [04 — Guia de Adaptação de Missões](../../gdd/03_Enredo_e_Mundo/04_Guia_Adaptacao_de_Missoes.md)
- [01 — Ato 1: A Primeira Ruptura](../../gdd/03_Enredo_e_Mundo/01_Ato_1_A_Primeira_Ruptura.md)
