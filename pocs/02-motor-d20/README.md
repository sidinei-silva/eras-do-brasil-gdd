# POC 02 — Motor D20

> **Módulo A:** Motor de Regras (Lógica Pura)
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Implementar o sistema de rolagem D20 completo: 1d20 + modificador vs CD (Classe de Dificuldade), acertos críticos (20 natural), falhas críticas (1 natural), e mecânicas de vantagem/desvantagem.

## Contexto

Valida as mecânicas básicas de resolução definidas no GDD:

- [Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)

O D20 é o motor central de resolução do jogo. Toda ação significativa — ataque, perícia, resistência — passa por este sistema. Validar a distribuição estatística é essencial para o balanceamento.

## Pré-requisitos

Nenhum — pode ser desenvolvida em paralelo com POC 01.

## Escopo

### ✅ Dentro do escopo

- Rolagem 1d20 com modificador
- Comparação contra CD (Classe de Dificuldade)
- Acerto crítico (nat 20) e falha crítica (nat 1)
- Mecânica de vantagem (rola 2d20, pega maior) e desvantagem (pega menor)
- Teste de perícia (skill check)
- Rolagem de ataque (attack roll)
- Simulação estatística (1000 testes)

### ❌ Fora do escopo

- Sistema de dano
- Efeitos de status
- Interface gráfica
- Integração com combate tático

## Critério de Aceite

- [ ] DiceRoller implementa rolagem 1d20 com modificador
- [ ] Acertos e falhas críticas detectados corretamente
- [ ] Vantagem/desvantagem funcionam conforme regras
- [ ] CLI simula **1000 testes** e exibe distribuição de acertos/críticos
- [ ] Distribuição estatística condiz com o esperado (~5% críticos, ~5% falhas críticas)

## Estrutura Sugerida

```
pocs/02-motor-d20/
├── README.md
├── Assets/
│   └── Scripts/
│       ├── Core/
│       │   ├── DiceRoller.cs            # Rolagem de dados (1d20, XdY)
│       │   └── SkillCheckResolver.cs    # Resolução de testes de perícia
│       └── Tests/
│           └── D20TestRunner.cs         # Simulação de 1000 rolagens
```

## Referências

- [Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
- [Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
