# POC 27 — Comércio e NPCs

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | E: Economia e Crafting         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o sistema de comércio com NPCs mercadores, incluindo compra/venda de itens, precificação regional (preços variam por bioma/cidade) e interface de troca.

## Contexto

Valida a regra do GDD sobre **comércio e economia**: o jogador interage com NPCs mercadores para comprar e vender itens, com preços que variam conforme a região, oferta/demanda e reputação.

📖 Referência: [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de dados |
| 06  | Matriz de Itens | Definições de itens com preço base |
| 12  | Rotinas de NPCs | NPCs mercadores com rotinas e disponibilidade |
| 24  | Inventário | Itens do jogador para venda e recebimento de compras |

## Escopo

### ✅ Dentro do escopo

- `ShopSystem` — sistema de loja (compra/venda entre jogador e NPC)
- `PriceCalculator` — cálculo de preço com modificadores regionais
- `MerchantInventory` — inventário do NPC mercador (estoque limitado)
- `TradeUI` — interface visual de comércio (lista de itens, preços, botões)
- Modificadores de preço por região/bioma
- Verificação de saldo do jogador antes da compra

### ❌ Fora do escopo

- Leilões entre jogadores
- Sistema de barganha/haggling com skill check
- Contrabando e itens ilegais
- Economia dinâmica global entre regiões

## Critério de Aceite

- [ ] Jogador pode comprar itens de um NPC mercador
- [ ] Jogador pode vender itens para um NPC mercador
- [ ] Preços variam conforme a região (modificadores regionais aplicados)
- [ ] NPC mercador possui inventário próprio com estoque limitado
- [ ] Compra só é possível se o jogador tiver saldo suficiente
- [ ] Venda só é possível se o NPC tiver ouro suficiente
- [ ] Interface de troca exibe itens, preços e saldo do jogador
- [ ] Log mostra transações realizadas (item, quantidade, preço, região)

## Estrutura Sugerida

```
pocs/27-comercio/
├── README.md
└── Assets/
    └── Scripts/
        ├── ShopSystem.cs           # Sistema de loja (compra/venda)
        ├── PriceCalculator.cs      # Cálculo de preço com modificadores regionais
        ├── MerchantInventory.cs    # Inventário do NPC mercador
        └── TradeUI.cs              # Interface visual de comércio
```

## Referências

- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
