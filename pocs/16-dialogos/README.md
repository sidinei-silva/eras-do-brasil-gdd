# POC 16 — Diálogos Ramificados

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | C: NPCs e IA                   |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar um sistema de diálogos ramificados com árvores de decisão e condições dinâmicas (reputação, posse de itens, classe ativa do personagem).

## Contexto

Valida a regra do GDD sobre **diálogos e interação com NPCs**: árvores de diálogo com ramificações condicionais permitem narrativas dinâmicas baseadas no estado do jogador.

📖 Referência: [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de dados |
| 12  | Rotinas de NPCs | NPCs com comportamento base |
| 15  | Facções e Reputação | Condições de diálogo baseadas em reputação |

## Escopo

### ✅ Dentro do escopo

- `DialogueNode` — nó da árvore com texto, opções e condições
- `DialogueCondition` — condições (reputação ≥ X, possui item Y, classe ativa Z)
- `DialogueTree` — estrutura de dados da árvore completa
- `DialogueRunner` — motor de execução do diálogo
- Dados de diálogo em formato JSON
- UI básica de diálogo (caixa de texto + opções)

### ❌ Fora do escopo

- Dublagem ou áudio de diálogos
- Sistema de quests disparadas por diálogo (ver POC 37)
- Animações faciais ou gestos de NPC

## Critério de Aceite

- [ ] Árvore de diálogo carregada de arquivo JSON
- [ ] Condição por reputação: opção aparece somente se reputação ≥ limiar
- [ ] Condição por item: opção aparece somente se jogador possui item específico
- [ ] Condição por classe ativa: opção aparece somente se classe ativa é a correta
- [ ] Múltiplas ramificações funcionam em sequência
- [ ] UI exibe texto do NPC e opções clicáveis do jogador

## Estrutura Sugerida

```
pocs/16-dialogos/
├── README.md
└── Assets/
    └── Scripts/
        ├── DialogueNode.cs       # Nó da árvore de diálogo
        ├── DialogueCondition.cs  # Condições para ramificação
        ├── DialogueTree.cs       # Estrutura da árvore completa
        ├── DialogueRunner.cs     # Motor de execução do diálogo
        └── DialogueUI.cs         # Interface visual do diálogo
```

## Referências

- [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
- [07 — Magia e Espiritualidade](../../gdd/01_Livro_de_Regras/07_Magia_e_Espiritualidade.md)
