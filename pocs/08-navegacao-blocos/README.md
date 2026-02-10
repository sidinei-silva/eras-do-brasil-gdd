# POC 08 — Navegação por Blocos

> **Módulo B:** Mundo e Tempo
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar a navegação por blocos no mapa do mundo, onde cada bloco representa uma região com tipo de terreno específico. A viagem entre blocos consome Ticks proporcionais ao terreno.

## Contexto

Valida o sistema de navegação e mapa definido no GDD:

- [Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)

O mapa de Eras do Brasil é composto por blocos interconectados. Cada bloco tem um tipo de terreno que afeta custo de viagem, eventos possíveis e visibilidade. A navegação por blocos é a forma primária de exploração do mundo.

## Pré-requisitos

- **POC 01** — Fundação de Dados (dados de terrenos e blocos)
- **POC 07** — Motor de Ticks (custo de viagem em Ticks)

## Escopo

### ✅ Dentro do escopo

- Estrutura de dados WorldBlock (nome, terreno, adjacências)
- Grafo de adjacência WorldMap
- TravelSystem com custo em Ticks por tipo de terreno
- Enum TerrainType (Vila, Floresta, Ruínas, Rio, Mangue, etc.)
- Cena de teste de navegação

### ❌ Fora do escopo

- Eventos aleatórios ao entrar em blocos (ver POC 09)
- Visualização 2D/3D do mapa
- Pathfinding automático (ver POC 22)
- Sistema de clima/maré (ver POC 11)

## Critério de Aceite

- [ ] Blocos criados com nome, tipo de terreno e lista de adjacências
- [ ] Grafo de mapa navegável
- [ ] Navegar **Vila → Floresta → Ruínas** funciona corretamente
- [ ] Ticks gastos são **proporcionais ao tipo de terreno**
- [ ] TickManager é consumido corretamente pela viagem

## Estrutura Sugerida

```
pocs/08-navegacao-blocos/
├── README.md
├── Assets/
│   ├── Scripts/
│   │   ├── World/
│   │   │   ├── WorldBlock.cs            # Dados de um bloco do mundo
│   │   │   ├── WorldMap.cs              # Grafo de adjacência
│   │   │   ├── TravelSystem.cs          # Sistema de viagem com custo
│   │   │   └── TerrainType.cs           # Enum de tipos de terreno
│   │   └── Tests/
│   │       └── NavigationTestScene.cs   # Cena de teste de navegação
│   └── Scenes/
│       └── NavigationTest.unity
```

## Referências

- [Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)
- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
