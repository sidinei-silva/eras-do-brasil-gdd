# POC 24 — Inventário

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | E: Economia e Crafting         |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar o sistema de inventário com gerenciamento de itens, equipar/desequipar, controle de peso/capacidade e interface drag & drop.

## Contexto

Valida a regra do GDD sobre **inventário e gerenciamento de itens**: o jogador possui um inventário com limite de peso/capacidade, pode equipar e desequipar itens em slots específicos, e a interface permite arrastar e soltar.

📖 Referência: [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de itens |
| 06  | Matriz de Itens | Definições de itens com Qualidade×Raridade |

## Escopo

### ✅ Dentro do escopo

- Container de inventário com lista de itens e capacidade máxima
- Slots de equipamento (cabeça, torso, mãos, pés, arma, escudo, acessórios)
- Equipar e desequipar itens (com validação de tipo de slot)
- Cálculo de peso total e validação de capacidade
- UI de inventário com drag & drop
- Empilhamento de itens consumíveis

### ❌ Fora do escopo

- Coleta de itens no mundo (ver POC 25)
- Crafting de itens (ver POC 26)
- Comércio entre jogadores ou NPCs (ver POC 27)
- Itens com efeitos especiais ou encantamentos

## Critério de Aceite

- [ ] Inventário armazena itens até o limite de capacidade/peso
- [ ] Itens podem ser equipados nos slots corretos
- [ ] Itens podem ser desequipados (voltam ao inventário)
- [ ] Peso total calculado corretamente
- [ ] Inventário cheio impede adição de novos itens
- [ ] UI de drag & drop funcional (arrastar item entre inventário e slots)
- [ ] Itens consumíveis empilham corretamente

## Estrutura Sugerida

```
pocs/24-inventario/
├── README.md
└── Assets/
    └── Scripts/
        ├── Inventory.cs          # Container de inventário
        ├── EquipmentSlot.cs      # Slots de equipamento
        ├── InventoryUI.cs        # Interface visual do inventário
        ├── DragDropHandler.cs    # Handler de drag & drop
        └── WeightCalculator.cs   # Calculador de peso/capacidade
```

## Referências

- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [03 — Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
