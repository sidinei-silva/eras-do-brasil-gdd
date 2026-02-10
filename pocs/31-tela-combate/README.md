# POC 31 — Tela de Combate Estático

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | F: UI e Visual                 |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar a tela de combate estático com sprites de inimigos, personagem do jogador, hotbar de ações, log de combate scrollável e números de dano flutuante.

## Contexto

Valida a regra do GDD sobre **UI Fase 1**: a tela de combate exibe a cena de batalha com visualização estática (sprites), barra de ações rápidas e feedback visual de dano/cura flutuante.

📖 Referência: [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 17  | Combate Estático | Motor de combate com turnos e ações |
| 28  | HUD Principal | Barras de PV/XP integradas ao combate |

## Escopo

### ✅ Dentro do escopo

- `CombatSceneUI` — layout geral da tela de combate
- `EnemySpriteDisplay` — exibição de sprites dos inimigos com animações básicas
- `ActionHotbar` — hotbar de ações (ataque, habilidades, itens, fuga)
- `CombatLogUI` — log de combate scrollável com histórico de ações
- `FloatingDamage` — números de dano/cura flutuantes sobre sprites
- Indicação visual de turno atual (jogador vs inimigo)

### ❌ Fora do escopo

- Combate tático em grid (POC 21/23)
- Animações de ataque elaboradas
- Sistema de targeting múltiplo
- Efeitos de partículas para magias

## Critério de Aceite

- [ ] Sprites de inimigos são exibidos na tela de combate
- [ ] Personagem do jogador é exibido com retrato e barras de status
- [ ] Hotbar de ações exibe opções disponíveis (ataque, habilidades, itens, fuga)
- [ ] Log de combate registra todas as ações com scroll
- [ ] Dano flutuante aparece sobre o alvo ao receber dano
- [ ] Cura flutuante aparece sobre o alvo ao ser curado
- [ ] Indicação clara de quem é o turno atual
- [ ] Transição suave entre turno do jogador e turno dos inimigos

## Estrutura Sugerida

```
pocs/31-tela-combate/
├── README.md
└── Assets/
    └── Scripts/
        ├── CombatSceneUI.cs        # Layout da tela de combate
        ├── EnemySpriteDisplay.cs   # Exibição de sprites de inimigos
        ├── ActionHotbar.cs         # Hotbar de ações do jogador
        ├── CombatLogUI.cs          # Log de combate scrollável
        └── FloatingDamage.cs       # Números de dano/cura flutuantes
```

## Referências

- [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)
- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
- [02 — UI, HUD e Tipografia](../../gdd/04_Design_Visual/02_UI_HUD_e_Tipografia.md)
