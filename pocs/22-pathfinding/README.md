# POC 22 — Pathfinding A*

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o algoritmo A* para pathfinding no grid isométrico, com clique-e-anda, desvio de obstáculos e custo variável de terreno.

## Contexto

Valida a regra do GDD sobre **movimentação tática com pathfinding**: personagens se movem pelo grid encontrando o melhor caminho automaticamente, considerando obstáculos e custos de terreno variáveis.

📖 Referência: [06 — UI Fase 2: Combate Tático](../../gdd/04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 21  | Grid Tático | Grid isométrico com TileData |

## Escopo

### ✅ Dentro do escopo

- Algoritmo A* adaptado para grid isométrico
- Heurística adequada para coordenadas isométricas
- Custo de terreno variável por tipo de tile (grama, lama, água, etc.)
- Clique em tile de destino → personagem encontra caminho e se move
- Visualização do caminho encontrado (highlight dos tiles)

### ❌ Fora do escopo

- Pathfinding para NPCs fora de combate (ver POC 08)
- Movimentação em tempo real (é por turnos)
- Pathfinding com múltiplas unidades simultâneas

## Critério de Aceite

- [ ] A* encontra caminho mais curto entre dois pontos no grid
- [ ] Obstáculos são desviados corretamente
- [ ] Custo de terreno diferente por tipo de tile (ex: lama = custo 2, grama = custo 1)
- [ ] Clique no tile de destino move o personagem pelo caminho calculado
- [ ] Caminho visualizado no grid (tiles highlight)
- [ ] Sem caminho disponível → feedback adequado

## Estrutura Sugerida

```
pocs/22-pathfinding/
├── README.md
└── Assets/
    └── Scripts/
        ├── AStarPathfinder.cs   # Implementação do algoritmo A*
        ├── PathNode.cs          # Nó do grafo de pathfinding
        └── PathVisualizer.cs    # Visualização do caminho no grid
```

## Referências

- [06 — UI Fase 2: Combate Tático](../../gdd/04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md)
- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
