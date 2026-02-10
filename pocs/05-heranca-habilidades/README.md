# POC 05 — Herança de Habilidades

> **Módulo A:** Motor de Regras (Lógica Pura)
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar o sistema de troca de classes via "Dom da Revivência" e validar as regras de herança: habilidades ativas são herdadas ao trocar de classe, habilidades passivas **não** são herdadas.

## Contexto

Valida o sistema de alternância e herança definido no GDD:

- [Alternância de Classes](../../gdd/02_Livro_de_Classes/02_Alternancia_de_Classes.md)
- [Herança de Habilidades](../../gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md)

O "Dom da Revivência" é uma mecânica central e única do Eras do Brasil: permite que personagens troquem de classe mantendo parte do repertório anterior. A distinção ativa vs. passiva é a chave do balanceamento.

## Pré-requisitos

- **POC 01** — Fundação de Dados (templates de classes e habilidades)
- **POC 03** — Atributos e Criação (personagem base)
- **POC 04** — Tier Scaling (progressão e desbloqueio de habilidades)

## Escopo

### ✅ Dentro do escopo

- Lógica de troca de classes (Dom da Revivência)
- Classificação de habilidades: Ativa vs. Passiva
- Regra de herança: ativas herdadas, passivas descartadas
- Limite de habilidades herdadas
- Log detalhado provando a lógica de herança

### ❌ Fora do escopo

- Interface de seleção de classe
- Árvore visual de habilidades
- Efeitos visuais de transformação
- Combinações multiclasse avançadas

## Critério de Aceite

- [ ] Personagem troca de classe via Dom da Revivência
- [ ] Habilidades ativas da classe anterior são **mantidas** (herdadas)
- [ ] Habilidades passivas da classe anterior **não** são mantidas
- [ ] Limite de herança respeitado
- [ ] Log no console **prova a lógica** de cada decisão de herança

## Estrutura Sugerida

```
pocs/05-heranca-habilidades/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Classes/
│       │   ├── ClassSwitcher.cs           # Lógica de troca de classe
│       │   ├── AbilityInheritance.cs      # Regras de herança
│       │   └── AbilityType.cs             # Enum: Ativa, Passiva
│       └── Tests/
│           └── InheritanceTestRunner.cs   # Testes de herança
```

## Referências

- [Alternância de Classes](../../gdd/02_Livro_de_Classes/02_Alternancia_de_Classes.md)
- [Herança de Habilidades](../../gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md)
- [Tiers e Evolução](../../gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md)
- [Sistema de Classes — Introdução](../../gdd/02_Livro_de_Classes/00_Sistema_de_Classes_Intro.md)
