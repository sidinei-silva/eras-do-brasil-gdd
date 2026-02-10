# POC 10 — Relógio da Ruptura

> **Módulo B:** Mundo e Tempo
> **Prioridade:** 🟡 Importante

---

## Objetivo

Implementar o relógio global de 500 Ticks que representa a contagem regressiva da Ruptura, com mudanças de fase do mundo nos thresholds 100, 250 e 400, e avanço dos Bandeirantes.

## Contexto

Valida a mecânica central de tensão narrativa do Ato 1:

- [Ato 1 — A Primeira Ruptura](../../gdd/03_Enredo_e_Mundo/01_Ato_1_A_Primeira_Ruptura.md)

O Relógio da Ruptura é a mecânica que cria urgência no jogo. Enquanto o jogador explora, o mundo muda ao redor: a natureza apodrece, os Bandeirantes avançam, e o Eco se desequilibra. A cada threshold atingido, o mundo entra em uma nova fase visual e mecânica.

## Pré-requisitos

- **POC 07** — Motor de Ticks (base temporal para o relógio)

## Escopo

### ✅ Dentro do escopo

- RuptureClock: contador global de 500 Ticks
- WorldPhase: fases do mundo (Estável, Instável, Crítico, Ruptura)
- Transições nos Ticks 100, 250 e 400
- BandeiranteAdvancer: avanço de 1 bloco a cada 15 Ticks
- Hooks para mudança de estado do mundo
- Log de fases no console

### ❌ Fora do escopo

- Efeitos visuais das fases (shaders, partículas)
- Consequências mecânicas detalhadas por fase
- Sistema de missões ligado à Ruptura
- Múltiplos finais baseados no relógio

## Critério de Aceite

- [ ] Relógio global conta de 0 a 500 Ticks
- [ ] Fase do mundo muda no **Tick 100** (Estável → Instável)
- [ ] Fase do mundo muda no **Tick 250** (Instável → Crítico)
- [ ] Fase do mundo muda no **Tick 400** (Crítico → Ruptura)
- [ ] Bandeirantes avançam **1 bloco a cada 15 Ticks**
- [ ] Console exibe mudanças de fase e posição dos Bandeirantes

## Estrutura Sugerida

```
pocs/10-relogio-ruptura/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Rupture/
│       │   ├── RuptureClock.cs            # Relógio global de 500 Ticks
│       │   ├── WorldPhase.cs              # Enum/estado das fases do mundo
│       │   └── BandeiranteAdvancer.cs     # Avanço periódico dos Bandeirantes
│       └── Tests/
│           └── RuptureTestRunner.cs       # Simulação do relógio completo
```

## Referências

- [Ato 1 — A Primeira Ruptura](../../gdd/03_Enredo_e_Mundo/01_Ato_1_A_Primeira_Ruptura.md)
- [Linha Eco-Histórica e Rupturas](../../gdd/03_Enredo_e_Mundo/02_Linha_Eco-Historica_e_Rupturas.md)
- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
