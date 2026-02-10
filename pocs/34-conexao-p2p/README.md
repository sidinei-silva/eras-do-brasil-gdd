# POC 34 — Conexão P2P Básica

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | G: Persistência e Rede         |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar a conexão P2P básica usando Unity Netcode for GameObjects (NGO): um jogador cria a sessão (Host) e outro conecta via IP (Client), com callbacks de conexão/desconexão.

## Contexto

Valida a regra do GDD sobre **multiplayer cooperativo** (Project Plan §5): o jogo suporta sessões P2P onde um jogador atua como Host e outros conectam como Clients para jogar juntos.

📖 Referência: [Project Plan](../../gdd/Project%20Plan.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| —   | Nenhum | POC isolada de networking |

## Escopo

### ✅ Dentro do escopo

- `NetworkSetup` — configuração do NetworkManager (Unity NGO)
- `ConnectionUI` — interface para criar sessão (Host) ou conectar (Client via IP)
- `ConnectionCallbacks` — callbacks de conexão, desconexão e erro
- Host inicia servidor e aguarda conexões
- Client conecta via IP e porta
- Console mostra "Client Connected" ao conectar com sucesso

### ❌ Fora do escopo

- Matchmaking online ou lobby
- Relay/NAT traversal (Unity Relay)
- Sincronização de estado do jogo
- Reconexão automática após queda

## Critério de Aceite

- [ ] Host cria uma sessão e fica aguardando conexões
- [ ] Client conecta ao Host via IP e porta
- [ ] Console mostra "Client Connected" ao conectar com sucesso
- [ ] Callback de desconexão é disparado ao desconectar
- [ ] Duas instâncias do jogo funcionam simultaneamente (Host + Client)
- [ ] UI exibe botões para Host e Client com campo de IP
- [ ] Tratamento de erro para conexão recusada ou timeout

## Estrutura Sugerida

```
pocs/34-conexao-p2p/
├── README.md
└── Assets/
    └── Scripts/
        ├── NetworkSetup.cs           # Configuração do NetworkManager (NGO)
        ├── ConnectionUI.cs           # Interface de Host/Client
        └── ConnectionCallbacks.cs    # Callbacks de conexão/desconexão
```

## Referências

- [Project Plan](../../gdd/Project%20Plan.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
