# POC 04 — Tier Scaling

> **Módulo A:** Motor de Regras (Lógica Pura)
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar o sistema de progressão por Tiers (1→2→3), incluindo thresholds de XP, curvas de crescimento de atributos e desbloqueio de habilidades por nível de Tier.

## Contexto

Valida o sistema de evolução por Tiers definido no GDD:

- [Tiers e Evolução](../../gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md)

O sistema de Tiers é o eixo de progressão vertical do jogo. Cada Tier representa um salto de poder significativo — não apenas numérico, mas também narrativo. Validar que os números escalam corretamente é essencial para o balanceamento.

## Pré-requisitos

- **POC 01** — Fundação de Dados (templates de classes)
- **POC 03** — Atributos e Criação (sistema de atributos base)

## Escopo

### ✅ Dentro do escopo

- Sistema de Tiers (1, 2, 3)
- Thresholds de XP para transição entre Tiers
- Curvas de crescimento de atributos por Tier
- Desbloqueio de habilidades vinculado ao Tier
- Simulação de evolução Tier 1→3 com validação numérica

### ❌ Fora do escopo

- Troca de classes entre Tiers (ver POC 05)
- Interface de progressão / árvore visual
- Balanceamento fino de combate
- Narrativa de evolução

## Critério de Aceite

- [ ] Personagem progride de Tier 1 para Tier 2 e Tier 3
- [ ] Thresholds de XP respeitados para cada transição
- [ ] Atributos escalam conforme curva definida
- [ ] Habilidades desbloqueiam corretamente por Tier
- [ ] Simulação Tier 1→3 valida que **números não "quebram" o balanceamento**

## Estrutura Sugerida

```
pocs/04-tier-scaling/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Progression/
│       │   ├── TierSystem.cs              # Gerencia Tiers e transições
│       │   └── LevelProgression.cs        # Curvas de XP e crescimento
│       └── Tests/
│           └── TierScalingSimulator.cs    # Simula evolução completa
```

## Referências

- [Tiers e Evolução](../../gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md)
- [Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
- [Sistema de Classes — Introdução](../../gdd/02_Livro_de_Classes/00_Sistema_de_Classes_Intro.md)
