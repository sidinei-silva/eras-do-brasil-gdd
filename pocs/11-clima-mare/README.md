# POC 11 — Clima e Maré

> **Módulo B:** Mundo e Tempo
> **Prioridade:** 🟡 Importante

---

## Objetivo

Implementar o sistema de clima e ciclo de maré, validando que condições ambientais afetam visibilidade e custo de movimentação nos blocos do mapa.

## Contexto

Valida os sistemas ambientais definidos no GDD:

- [Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)

O clima e a maré são camadas de complexidade ambiental que tornam a exploração mais tática. Chuva reduz visibilidade, maré alta bloqueia passagens, e o jogador precisa planejar suas rotas levando em conta o ambiente — não apenas distância.

## Pré-requisitos

- **POC 07** — Motor de Ticks (base temporal para ciclos)
- **POC 08** — Navegação por Blocos (modificadores aplicados à navegação)

## Escopo

### ✅ Dentro do escopo

- WeatherSystem: estados de clima (Sol, Chuva, Tempestade, Neblina)
- TideSystem: ciclo de maré de 100 Ticks (baixa → enchente → alta → vazante)
- Modificadores de visibilidade por clima
- Modificadores de custo de movimentação por maré
- Integração com TravelSystem da POC 08

### ❌ Fora do escopo

- Efeitos visuais de clima (partículas, shaders)
- Clima por região (sistema global simplificado)
- Impacto do clima em combate
- Previsão do tempo / habilidades de previsão

## Critério de Aceite

- [ ] Ciclo de maré completo em **100 Ticks** (4 fases)
- [ ] Clima varia ao longo do tempo
- [ ] Clima **influencia visibilidade** (ex: Neblina reduz range de visão)
- [ ] Maré **influencia custo de movimentação** (ex: maré alta em terreno costeiro custa mais)
- [ ] Modificadores aplicados corretamente ao TravelSystem

## Estrutura Sugerida

```
pocs/11-clima-mare/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Environment/
│       │   ├── WeatherSystem.cs           # Sistema de clima
│       │   ├── TideManager.cs             # Gerenciador de maré
│       │   └── EnvironmentModifier.cs     # Modificadores ambientais
│       └── Tests/
│           └── EnvironmentTestRunner.cs   # Testes de clima e maré
```

## Referências

- [Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)
- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
