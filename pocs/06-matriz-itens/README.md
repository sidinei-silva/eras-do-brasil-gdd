# POC 06 — Matriz de Itens 5×5

> **Módulo A:** Motor de Regras (Lógica Pura)
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar a matriz de itens 5×5 (5 níveis de Qualidade × 5 níveis de Raridade), validando o cálculo de bônus, escalonamento de durabilidade e geração procedural de itens.

## Contexto

Valida o sistema de economia e crafting definido no GDD:

- [Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

A matriz 5×5 é o coração do sistema de itens. Cada combinação Qualidade×Raridade produz um perfil de item diferente, permitindo variedade sem explosão combinatória descontrolada.

## Pré-requisitos

- **POC 01** — Fundação de Dados (templates de itens)

## Escopo

### ✅ Dentro do escopo

- Enum de Qualidade: Precário, Comum, Bom, Superior, Lendário
- Enum de Raridade: 5 níveis
- Tabela de multiplicadores de bônus por combinação
- Escalonamento de durabilidade
- Geração aleatória de itens com Qualidade×Raridade
- Validação de 50 itens gerados

### ❌ Fora do escopo

- Crafting e receitas
- Interface de inventário
- Efeitos visuais de raridade
- Economia / preços / comércio

## Critério de Aceite

- [ ] Enums de Qualidade e Raridade implementados (5 níveis cada)
- [ ] Multiplicadores de bônus calculados para cada combinação
- [ ] Durabilidade escala corretamente com Qualidade×Raridade
- [ ] Geração de **50 itens aleatórios** com combinações válidas
- [ ] Validação confirma que bônus e durabilidade estão corretos para todos os itens gerados

## Estrutura Sugerida

```
pocs/06-matriz-itens/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Items/
│       │   ├── ItemQuality.cs          # Enum de qualidade (Precário→Lendário)
│       │   ├── ItemRarity.cs           # Enum de raridade
│       │   ├── ItemMatrix.cs           # Tabela de multiplicadores 5×5
│       │   └── ItemGenerator.cs        # Gerador procedural de itens
│       └── Tests/
│           └── MatrixTestRunner.cs     # Gera 50 itens e valida
```

## Referências

- [Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [Schemas Estruturais](../../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)
