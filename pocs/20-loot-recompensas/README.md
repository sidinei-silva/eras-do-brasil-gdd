# POC 20 — Loot e Recompensas

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o sistema de tabelas de loot ponderadas, geração de drops com distribuição Qualidade×Raridade, e cálculo de recompensas de XP.

## Contexto

Valida a regra do GDD sobre **economia de itens e recompensas de combate**: ao fim de um combate, itens são gerados a partir de tabelas ponderadas seguindo a matriz de Qualidade×Raridade do jogo.

📖 Referência: [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de itens |
| 06  | Matriz de Itens | Matriz Qualidade×Raridade |
| 17  | Combate Estático | Combate que gera loot ao fim |

## Escopo

### ✅ Dentro do escopo

- `LootTable` com entradas ponderadas (peso por item/categoria)
- Geração aleatória ponderada (weighted random)
- Distribuição de Qualidade×Raridade nos drops
- Cálculo de XP baseado no nível/dificuldade dos inimigos
- Múltiplos drops por encontro

### ❌ Fora do escopo

- Inventário para receber os itens (ver POC 24)
- Loot de coleta no mundo (ver POC 25)
- Interface visual de tela de loot

## Critério de Aceite

- [ ] Tabela de loot definida com pesos por entrada
- [ ] Geração aleatória respeita os pesos (itens raros caem menos)
- [ ] Drops gerados possuem Qualidade e Raridade corretas
- [ ] XP calculado corretamente baseado nos inimigos derrotados
- [ ] Múltiplas execuções mostram distribuição estatisticamente coerente
- [ ] Log mostra itens gerados com seus atributos

## Estrutura Sugerida

```
pocs/20-loot-recompensas/
├── README.md
└── Assets/
    └── Scripts/
        ├── LootTable.cs       # Tabela de loot com entradas ponderadas
        ├── LootEntry.cs       # Entrada individual da tabela
        ├── LootGenerator.cs   # Gerador de drops
        └── XPCalculator.cs    # Calculador de recompensa de XP
```

## Referências

- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
