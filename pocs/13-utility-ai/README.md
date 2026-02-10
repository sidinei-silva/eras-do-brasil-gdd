# POC 13 — Utility AI

> **Módulo C:** NPCs e IA
> **Prioridade:** 🟡 Importante

---

## Objetivo

Implementar o sistema de necessidades de NPCs (Fome, Sede, Energia, Social, Segurança) com scoring de utilidade, seleção de ações e override comportamental baseado em necessidades críticas.

## Contexto

Valida o sistema de IA e necessidades de NPCs definido no GDD:

- [Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)

Enquanto a POC 12 dá rotinas fixas aos NPCs, a Utility AI permite que eles **quebrem a rotina** quando uma necessidade se torna urgente. Um NPC com fome vai priorizar comer — mesmo que devesse estar trabalhando. Um NPC ameaçado vai fugir. Isso cria comportamento emergente e crível.

## Pré-requisitos

- **POC 07** — Motor de Ticks (decay de necessidades por Tick)
- **POC 12** — Rotinas de NPCs (base comportamental que a Utility AI pode sobrescrever)

## Escopo

### ✅ Dentro do escopo

- NeedSystem: 5 necessidades (Fome, Sede, Energia, Social, Segurança)
- Decay (degradação) de necessidades por Tick
- UtilityScorer: pontuação de utilidade por ação candidata
- ActionSelector: seleção da ação de maior utilidade
- Override de rotina quando necessidade atinge nível crítico
- Ações básicas: Comer, Beber, Dormir, Socializar, Fugir

### ❌ Fora do escopo

- IA de combate (ver POCs de combate)
- Personalidade e traços de NPCs
- Aprendizado / adaptação de longo prazo
- Interface visual de necessidades

## Critério de Aceite

- [ ] 5 necessidades implementadas com valores iniciais e taxa de decay
- [ ] Necessidades **decaem por Tick** automaticamente
- [ ] NPC com fome **prioriza ação de comer**
- [ ] NPC com medo (Segurança baixa) **prioriza fuga**
- [ ] Override de rotina ocorre quando necessidade atinge threshold crítico
- [ ] Console exibe estado das necessidades e ações selecionadas

## Estrutura Sugerida

```
pocs/13-utility-ai/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── AI/
│       │   ├── NPCNeeds.cs               # Sistema de 5 necessidades
│       │   ├── UtilityScorer.cs           # Calculador de utilidade
│       │   ├── NPCAction.cs              # Definição de ações possíveis
│       │   └── UtilityAIController.cs     # Controlador de IA por utilidade
│       └── Tests/
│           └── UtilityAITestRunner.cs     # Simulação de comportamento
```

## Referências

- [Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
