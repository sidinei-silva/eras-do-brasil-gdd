# POC 14 — Sistema de Fofoca

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | C: NPCs e IA                   |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar um sistema de fofoca entre NPCs, onde personagens não-jogáveis compartilham conhecimento quando estão no mesmo bloco do mundo, e o jogador pode consultar o que cada NPC sabe.

## Contexto

Valida a regra do GDD sobre **mundo vivo e comportamento social dos NPCs**: NPCs trocam informações entre si ao ocuparem o mesmo bloco, e o jogador pode perguntar a um NPC o que ele sabe.

📖 Referência: [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 07  | Motor de Ticks | Fofocas se propagam ao longo do tempo (ticks) |
| 08  | Navegação por Blocos | NPCs precisam estar "no mesmo bloco" |
| 12  | Rotinas de NPCs | NPCs precisam ter rotinas para se encontrarem |

## Escopo

### ✅ Dentro do escopo

- Estrutura `GossipEntry` representando uma informação (evento, local, personagem)
- `KnowledgeBase` por NPC — o que cada NPC sabe
- Transferência de conhecimento por proximidade (mesmo bloco)
- Sistema de consulta: jogador pergunta → NPC responde o que sabe
- Decaimento ou validade de informações (opcional)

### ❌ Fora do escopo

- Interface visual de diálogo (ver POC 16)
- Reputação ou consequências de fofoca (ver POC 15)
- IA avançada de decisão baseada em fofoca

## Critério de Aceite

- [ ] 2 NPCs no mesmo bloco trocam informações automaticamente
- [ ] NPC A sabe algo que NPC B não sabe; após ficarem no mesmo bloco, NPC B também sabe
- [ ] Jogador pode consultar um NPC e receber a lista do que ele sabe
- [ ] Informações possuem origem e timestamp (tick)
- [ ] Log de debug mostra transferências de fofoca

## Estrutura Sugerida

```
pocs/14-fofoca-npcs/
├── README.md
└── Assets/
    └── Scripts/
        ├── GossipEntry.cs          # Estrutura de dados de uma fofoca
        ├── NPCKnowledge.cs         # Base de conhecimento individual do NPC
        ├── GossipSystem.cs         # Motor de propagação de fofocas
        └── KnowledgeQueryHandler.cs # Consulta do jogador ao NPC
```

## Referências

- [08 — Mundo Vivo e NPCs](../../gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
