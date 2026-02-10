# POC 07 — Motor de Ticks

> **Módulo B:** Mundo e Tempo
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar o sistema universal de tempo baseado em Ticks, incluindo ciclo dia/noite, custo de ações em Ticks e regeneração passiva. O Motor de Ticks é o "coração" temporal do mundo do jogo.

## Contexto

Valida o sistema de tempo e exploração definido no GDD:

- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)

Todo o mundo de Eras do Brasil pulsa em Ticks. Cada ação do jogador consome Ticks, e o mundo reage: NPCs seguem rotinas, clima muda, a Ruptura avança. Este motor é a fundação do "mundo vivo".

## Pré-requisitos

Nenhum — pode ser desenvolvida em paralelo com POCs do Módulo A.

## Escopo

### ✅ Dentro do escopo

- TickManager central com contador global
- Ciclo dia/noite (100 Ticks = 1 dia)
- Sistema de custo de ações em Ticks
- Padrão de subscriber (ITickListener) para eventos de tick
- Regeneração passiva de PV vinculada a Ticks
- Cena de teste com botão "Esperar"

### ❌ Fora do escopo

- Ciclo de maré (ver POC 11)
- Relógio da Ruptura (ver POC 10)
- Rotinas de NPCs (ver POC 12)
- Interface visual elaborada

## Critério de Aceite

- [ ] TickManager avança Ticks corretamente
- [ ] Botão "Esperar" avança 1 Tick
- [ ] Relógio Dia/Noite atualiza com base nos Ticks (dia: 0–49, noite: 50–99)
- [ ] PV regenera passivamente a cada N Ticks
- [ ] Listeners recebem notificação de cada Tick

## Estrutura Sugerida

```
pocs/07-motor-ticks/
├── README.md
├── Assets/
│   ├── Scripts/
│   │   ├── Time/
│   │   │   ├── TickManager.cs           # Gerenciador central de Ticks
│   │   │   ├── DayNightCycle.cs         # Ciclo dia/noite (100 ticks)
│   │   │   └── ITickListener.cs         # Interface para subscribers
│   │   └── Tests/
│   │       └── TickTestScene.cs         # Cena de teste com botão
│   └── Scenes/
│       └── TickTest.unity
```

## Referências

- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
- [Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
