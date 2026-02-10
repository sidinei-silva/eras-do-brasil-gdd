# POC 23 — Combate Espacial

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar as mecânicas espaciais do combate tático: alcance real (melee vs ranged), visualização de AoE, sistema de cobertura (+2 Def) e ataques de oportunidade.

## Contexto

Valida a regra do GDD sobre **combate posicional e tático**: ataques têm alcance real no grid, coberturas concedem bônus de defesa, e sair de ameaça corpo-a-corpo provoca ataque de oportunidade.

📖 Referência: [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 17  | Combate Estático | Loop de combate base |
| 21  | Grid Tático | Grid para cálculo de distâncias |
| 22  | Pathfinding A* | Movimentação no grid |

## Escopo

### ✅ Dentro do escopo

- `RangeCalculator` — cálculo de alcance real no grid (melee = 1 tile, ranged = N tiles)
- Sistema de cobertura: tiles adjacentes a obstáculos concedem +2 Defesa
- Ataques de oportunidade ao sair de tile ameaçado por inimigo melee
- Renderização visual de áreas de efeito (AoE) no grid
- Validação de linha de visão para ataques ranged

### ❌ Fora do escopo

- Habilidades ativas com AoE (ver POC 19 — já implementa lógica de targeting)
- IA de posicionamento de inimigos
- Terreno destrutível

## Critério de Aceite

- [ ] Ataque melee só atinge alvos a 1 tile de distância
- [ ] Ataque ranged respeita alcance máximo (N tiles)
- [ ] AoE visualizado corretamente no grid (área de efeito destacada)
- [ ] Cobertura concede +2 de Defesa ao personagem atrás de obstáculo
- [ ] Ataque de oportunidade dispara ao sair de tile adjacente a inimigo melee
- [ ] Linha de visão bloqueada por obstáculos impede ataque ranged

## Estrutura Sugerida

```
pocs/23-combate-espacial/
├── README.md
└── Assets/
    └── Scripts/
        ├── RangeCalculator.cs           # Cálculo de alcance no grid
        ├── CoverSystem.cs               # Sistema de cobertura (+2 Def)
        ├── OpportunityAttackTrigger.cs   # Disparo de ataques de oportunidade
        └── AoERenderer.cs               # Renderização visual de AoE
```

## Referências

- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
- [06 — UI Fase 2: Combate Tático](../../gdd/04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md)
