# POC 36 — Trade Atômico P2P

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | G: Persistência e Rede         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar transferência atômica de itens entre jogadores via P2P, garantindo que itens não sejam duplicados nem perdidos em caso de desconexão durante a troca.

## Contexto

Valida a regra do GDD sobre **economia e comércio** em multiplayer: trocas de itens entre jogadores devem ser transações atômicas (tudo ou nada), com o servidor (Host) como autoridade sobre a posse dos itens.

📖 Referência: [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 24  | Inventário | Sistema de inventário com itens a serem transferidos |
| 34  | Conexão P2P Básica | Conexão de rede para troca entre jogadores |

## Escopo

### ✅ Dentro do escopo

- `TradeTransaction` — transação de troca (proposta, aceite, execução)
- `AtomicItemTransfer` — transferência atômica de itens (lock → transfer → confirm)
- `TradeRollback` — rollback em caso de falha ou desconexão
- `TradeUI` — interface de troca entre jogadores
- Server-authoritative item ownership (Host valida a posse)
- Proteção contra duplicação de itens

### ❌ Fora do escopo

- Troca com NPCs (POC 27)
- Leilões entre jogadores
- Troca de ouro/moeda (apenas itens)
- Histórico de transações persistente

## Critério de Aceite

- [ ] Drop + Pickup sincronizado entre dois jogadores
- [ ] Se conexão cair durante a troca, item não duplica nem some
- [ ] Host valida a posse do item antes de autorizar a transferência
- [ ] Transação é atômica: ambos os lados recebem ou nenhum recebe
- [ ] Rollback restaura estado anterior em caso de falha
- [ ] UI de troca permite selecionar itens e confirmar/cancelar
- [ ] Log mostra transações realizadas com sucesso ou rollback

## Estrutura Sugerida

```
pocs/36-trade-atomico/
├── README.md
└── Assets/
    └── Scripts/
        ├── TradeTransaction.cs       # Transação de troca
        ├── AtomicItemTransfer.cs     # Transferência atômica de itens
        ├── TradeRollback.cs          # Rollback em caso de falha
        └── TradeUI.cs                # Interface de troca entre jogadores
```

## Referências

- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [Project Plan](../../gdd/Project%20Plan.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
