# POC 35 — Sincronia de Ticks P2P

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | G: Persistência e Rede         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar a sincronização do sistema de ticks entre jogadores via P2P, com o Host como autoridade sobre o avanço de ticks e os Clients recebendo atualizações sincronizadas.

## Contexto

Valida a regra do GDD sobre **multiplayer cooperativo** (Project Plan §5): em sessões cooperativas, o sistema de ticks deve ser sincronizado entre todos os jogadores, com o Host controlando o avanço do tempo de forma autoritativa.

📖 Referência: [Project Plan](../../gdd/Project%20Plan.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 07  | Motor de Ticks | Sistema de ticks local a ser sincronizado |
| 34  | Conexão P2P Básica | Conexão de rede entre Host e Client |

## Escopo

### ✅ Dentro do escopo

- `NetworkTickManager` — gerenciamento de ticks em rede (NetworkVariable)
- `TickSyncHandler` — sincronização de ticks entre Host e Clients
- `TickActionRpc` — RPCs para ações de tick (ServerRpc/ClientRpc)
- Host como autoridade sobre o avanço de ticks
- Clients recebem tick atualizado via NetworkVariable
- Tratamento básico de latência

### ❌ Fora do escopo

- Compensação de lag avançada
- Rollback/netcode determinístico
- Sincronização de estado completo do mundo
- Desconexão e reconexão com re-sync

## Critério de Aceite

- [ ] Host avança ticks e Clients recebem a atualização
- [ ] Player A espera → Tick de Player B atualiza corretamente
- [ ] Host é autoritativo sobre o avanço de ticks
- [ ] NetworkVariable sincroniza o tick atual entre todos os jogadores
- [ ] ServerRpc permite que Clients solicitem ações de tick
- [ ] ClientRpc notifica todos os jogadores sobre mudanças de tick
- [ ] Latência baixa não causa dessincronização perceptível

## Estrutura Sugerida

```
pocs/35-sincronia-ticks/
├── README.md
└── Assets/
    └── Scripts/
        ├── NetworkTickManager.cs    # Gerenciamento de ticks em rede
        ├── TickSyncHandler.cs       # Sincronização Host → Clients
        └── TickActionRpc.cs         # RPCs para ações de tick
```

## Referências

- [Project Plan](../../gdd/Project%20Plan.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
