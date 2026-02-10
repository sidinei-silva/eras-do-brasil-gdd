# POC 26 — Crafting

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | E: Economia e Crafting         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o sistema de crafting com receitas, consumo de recursos, requisito de local (estação de crafting), rolagem D20 para qualidade e bônus de proficiência.

## Contexto

Valida a regra do GDD sobre **crafting e criação de itens**: o jogador combina receita + recursos + local adequado e faz um teste D20 (com bônus de proficiência) para determinar a qualidade do item criado.

📖 Referência: [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de dados |
| 02  | Motor D20 | Rolagem para determinação de qualidade |
| 06  | Matriz de Itens | Definições de itens com Qualidade×Raridade |
| 24  | Inventário | Recursos consumidos e item criado vai para inventário |
| 25  | Coleta e Proficiências | Bônus de proficiência no teste de crafting |

## Escopo

### ✅ Dentro do escopo

- `Recipe` — definição de receita (ingredientes, estação necessária, proficiência)
- `CraftingStation` — estações de crafting (Forja, Bancada de Alquimia, etc.)
- `CraftAction` — execução do crafting (valida receita, consome recursos)
- Determinação de qualidade: D20 + bônus de proficiência vs limiares
- Consumo de recursos do inventário
- UI básica de crafting (lista de receitas, botão de craft)

### ❌ Fora do escopo

- Receitas desbloqueáveis por progressão
- Crafting cooperativo entre jogadores
- Encantamentos ou melhorias pós-crafting
- Animações de crafting

## Critério de Aceite

- [ ] Receita define ingredientes necessários e estação de crafting
- [ ] Crafting só é possível com recursos suficientes no inventário
- [ ] Crafting só é possível na estação correta
- [ ] Teste D20 + proficiência determina qualidade do item criado
- [ ] Recursos são consumidos do inventário ao craftar
- [ ] Item criado é adicionado ao inventário com qualidade variável
- [ ] Log mostra receita usada, rolagem D20, bônus e qualidade resultante

## Estrutura Sugerida

```
pocs/26-crafting/
├── README.md
└── Assets/
    └── Scripts/
        ├── Recipe.cs                 # Definição de receita
        ├── CraftingStation.cs        # Estação de crafting
        ├── CraftAction.cs            # Ação de crafting
        ├── CraftResultCalculator.cs  # Cálculo de qualidade (D20 + proficiência)
        └── CraftingUI.cs             # Interface visual de crafting
```

## Referências

- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
- [07 — Magia e Espiritualidade](../../gdd/01_Livro_de_Regras/07_Magia_e_Espiritualidade.md)
