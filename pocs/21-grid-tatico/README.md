# POC 21 — Grid Tático

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o grid tático isométrico usando Unity Tilemap, com sistema de coordenadas, movimentação de personagens no grid e validação de obstáculos.

## Contexto

Valida a regra do GDD sobre **combate tático em grid isométrico**: o campo de batalha é representado como um grid isométrico onde personagens se movem tile a tile respeitando obstáculos e terreno.

📖 Referência: [06 — UI Fase 2: Combate Tático](../../gdd/04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| — | Nenhum | POC visual independente |

## Escopo

### ✅ Dentro do escopo

- Setup de Tilemap isométrico no Unity
- `TileData` — dados por tile (walkable, custo, tipo de terreno)
- Sistema de coordenadas do grid (conversão mundo ↔ grid)
- Movimentação de personagem no grid (tile a tile)
- Validação de obstáculos (tiles não-walkable bloqueiam movimento)
- Highlight de tiles alcançáveis

### ❌ Fora do escopo

- Pathfinding A* (ver POC 22)
- Combate espacial com alcance e cobertura (ver POC 23)
- Arte final dos tiles (usar placeholders)

## Critério de Aceite

- [ ] Tilemap isométrico renderizado corretamente no Unity
- [ ] Personagem posicionado corretamente no grid
- [ ] Personagem anda tile a tile no grid
- [ ] Obstáculos bloqueiam movimentação
- [ ] Conversão mundo ↔ coordenada de grid funciona corretamente
- [ ] Tiles alcançáveis são highlight visualmente

## Estrutura Sugerida

```
pocs/21-grid-tatico/
├── README.md
└── Assets/
    └── Scripts/
        ├── GridManager.cs       # Gerenciador do grid tático
        ├── TileData.cs          # Dados de cada tile (walkable, custo, tipo)
        ├── GridMovement.cs      # Movimentação de personagens no grid
        └── IsometricHelper.cs   # Utilitários de conversão isométrica
```

## Referências

- [06 — UI Fase 2: Combate Tático](../../gdd/04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md)
- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
