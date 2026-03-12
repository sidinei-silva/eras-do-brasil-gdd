# 🖥️ Server — Eras do Brasil

> Servidor Go do MUD Moderno (MMORPG server-authoritative).

## Stack

- **Go 1.22+** — Goroutines para tick loop, IA de NPCs e conexões simultâneas
- **WebSocket** (gorilla/websocket) — Comunicação bidirecional em tempo real
- **SQLite** (modernc.org/sqlite) — Persistência RAM-First com snapshots async

## Arquitetura

Definida nos ADRs:

- [ADR-005 — Monolito + Goroutines + EventBus](../../vibe/decisions/ADR-005-arquitetura-servidor-monolito-goroutines.md)
- [ADR-006 — Persistência RAM-First + SQLite](../../vibe/decisions/ADR-006-persistencia-ram-first-sqlite.md)

## Estrutura Planejada

```
server/
├── main.go           # Entry point, HTTP server, WebSocket upgrade
├── go.mod
├── engine/
│   ├── eventbus.go   # Pub/Sub com Go channels
│   └── tick.go       # TickEngine com time.Ticker
├── world/            # WorldManager — blocos, grafo, dia/noite
├── combat/           # CombatManager — D20, turnos, loot
├── economy/          # EconomyManager — crafting, comércio
├── player/           # Conexão, readPump/writePump, estado do jogador
├── narrative/        # StoryManager, NPCManager, diálogos
├── persist/          # PersistManager — SQLite snapshots
└── data/             # JSON templates (itens, classes, inimigos)
```

## Como rodar

```bash
cd game/server
go run main.go
# Acesse http://localhost:8080
```

## Fase Atual

**Fase 0: Heartbeat** — Tick loop + WebSocket + cliente mínimo.
