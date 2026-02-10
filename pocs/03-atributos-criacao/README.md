# POC 03 — Atributos e Criação de Personagem

> **Módulo A:** Motor de Regras (Lógica Pura)
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar o sistema de atributos com os 6 atributos base (FOR, DES, CON, INT, SAB, CAR), o sistema de compra por pontos (point-buy de 27 pontos) e o cálculo de modificadores.

## Contexto

Valida as regras de criação de personagem definidas no GDD:

- [Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)

A criação de personagem é o primeiro contato do jogador com o sistema. O point-buy garante equilíbrio entre personagens, enquanto bônus de origem adicionam identidade cultural.

## Pré-requisitos

- **POC 01** — Fundação de Dados (para templates de classes e origens)

## Escopo

### ✅ Dentro do escopo

- 6 atributos base: Força (FOR), Destreza (DES), Constituição (CON), Inteligência (INT), Sabedoria (SAB), Carisma (CAR)
- Sistema point-buy com 27 pontos
- Tabela de custo por ponto (valores de 8 a 15)
- Cálculo de modificadores: `(atributo - 10) / 2`
- Bônus raciais/de origem
- Validação de limites

### ❌ Fora do escopo

- Interface gráfica de criação
- Sistema de classes/habilidades
- Equipamentos iniciais
- Narrativa de origem

## Critério de Aceite

- [ ] Personagem criado via point-buy com 27 pontos
- [ ] Todos os 6 atributos atribuídos dentro dos limites (8–15 base)
- [ ] Modificadores calculados corretamente para cada atributo
- [ ] Bônus de origem aplicados sobre os valores base
- [ ] Validação impede alocação inválida (pontos negativos, valores fora do range)

## Estrutura Sugerida

```
pocs/03-atributos-criacao/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Character/
│       │   ├── AttributeSet.cs          # Conjunto de 6 atributos
│       │   ├── PointBuyAllocator.cs     # Lógica de compra por pontos
│       │   ├── ModifierCalculator.cs    # Cálculo de modificadores
│       │   └── CharacterCreator.cs      # Orquestrador da criação
│       └── Tests/
│           └── CreationTestRunner.cs    # Testes de criação
```

## Referências

- [Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
- [Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
- [Schemas Estruturais](../../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)
