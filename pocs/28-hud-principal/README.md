# POC 28 — HUD Principal

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | F: UI e Visual                 |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar a HUD principal do jogo com barra superior contendo retrato do personagem, barras de PV/XP, exibição de recursos, moeda e relógio de ticks.

## Contexto

Valida a regra do GDD sobre **UI Fase 1**: a HUD principal é a interface persistente durante exploração e combate, exibindo informações vitais do personagem e o estado do mundo (relógio de ticks).

📖 Referência: [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 07  | Motor de Ticks | Relógio de ticks exibido na HUD |

## Escopo

### ✅ Dentro do escopo

- `HUDController` — controlador principal da HUD (Unity UI Toolkit)
- `HealthBar` — barra de PV com animação de dano/cura
- `XPBar` — barra de experiência com indicador de nível
- `ResourceDisplay` — exibição de recursos (comida, água, materiais)
- `TickClockUI` — relógio visual de ticks (período do dia, fase da lua)
- Layout de barra superior com retrato do personagem
- Exibição de moeda (ouro/prata)

### ❌ Fora do escopo

- Menus de inventário completos (POC 24)
- Mini-mapa na HUD
- Notificações e pop-ups de quest
- HUD de combate com hotbar (POC 31)

## Critério de Aceite

- [ ] Barra superior exibe retrato do personagem
- [ ] Barra de PV atualiza corretamente ao receber dano/cura
- [ ] Barra de XP atualiza ao ganhar experiência
- [ ] Recursos (comida, água, materiais) são exibidos corretamente
- [ ] Moeda do jogador é exibida e atualizada em tempo real
- [ ] Relógio de ticks exibe o período atual do dia
- [ ] HUD não bloqueia a visão do cenário principal
- [ ] Layout responsivo usando Unity UI Toolkit

## Estrutura Sugerida

```
pocs/28-hud-principal/
├── README.md
└── Assets/
    └── Scripts/
        ├── HUDController.cs      # Controlador principal da HUD
        ├── HealthBar.cs          # Barra de PV
        ├── XPBar.cs              # Barra de experiência
        ├── ResourceDisplay.cs    # Exibição de recursos
        └── TickClockUI.cs        # Relógio visual de ticks
```

## Referências

- [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)
- [02 — UI, HUD e Tipografia](../../gdd/04_Design_Visual/02_UI_HUD_e_Tipografia.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
