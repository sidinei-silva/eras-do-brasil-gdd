# POC 15 — Facções e Reputação

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | C: NPCs e IA                   |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o sistema de facções e reputação, onde ações do jogador alteram sua reputação com diferentes facções e NPCs ajustam seu comportamento com base nessa reputação.

## Contexto

Valida a regra do GDD sobre **facções e reputação**: ações do jogador (como matar inimigos de uma facção) alteram a reputação, e NPCs mudam seu comportamento de acordo com os limiares de reputação.

📖 Referência: [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de dados do jogo |
| 12  | Rotinas de NPCs | NPCs precisam ter comportamento base para modificar |

## Escopo

### ✅ Dentro do escopo

- Definição de facções (`FactionData`) com identificador e metadados
- `ReputationTracker` por jogador — valor numérico por facção
- Limiares de reputação (Hostil, Neutro, Amigável, Aliado, etc.)
- Modificadores de comportamento baseados em reputação
- Ações que alteram reputação (matar, ajudar, completar quest)

### ❌ Fora do escopo

- Sistema de diálogos condicionado por reputação (ver POC 16)
- Preços de comércio variáveis por reputação (ver POC 27)
- UI visual de barras de reputação

## Critério de Aceite

- [ ] Facções definidas com dados configuráveis (ScriptableObject ou JSON)
- [ ] Matar inimigo de facção X altera a reputação do jogador com a facção
- [ ] NPC muda comportamento (ex: agressivo vs amigável) baseado na reputação
- [ ] Limiares de reputação funcionam corretamente (transição entre faixas)
- [ ] Log mostra alterações de reputação e faixa atual

## Estrutura Sugerida

```
pocs/15-faccoes-reputacao/
├── README.md
└── Assets/
    └── Scripts/
        ├── Faction.cs                  # Dados de uma facção
        ├── ReputationTracker.cs        # Rastreamento de reputação por facção
        ├── ReputationThreshold.cs      # Faixas e limiares de reputação
        └── FactionBehaviorModifier.cs  # Modificadores de comportamento do NPC
```

## Referências

- [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
