# POC 25 — Coleta e Proficiências

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | E: Economia e Crafting         |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar o sistema de coleta de recursos do mundo, com proficiências que ganham XP a cada ação e nível de proficiência que determina o rendimento da coleta.

## Contexto

Valida a regra do GDD sobre **coleta de recursos e proficiências**: o jogador coleta recursos em nós específicos do mundo, ganha XP de proficiência a cada coleta, e o nível de proficiência melhora o rendimento.

📖 Referência: [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de dados |
| 07  | Motor de Ticks | Tempo para cooldown de nós de recurso |
| 08  | Navegação por Blocos | Jogador precisa estar no bloco correto |
| 24  | Inventário | Itens coletados vão para o inventário |

## Escopo

### ✅ Dentro do escopo

- `GatherAction` — ação de coleta com validação de local e proficiência
- `ProficiencySystem` — sistema de proficiências (Mineração, Herbalismo, Pesca, etc.)
- Curva de XP de proficiência (quanto XP para cada nível)
- Nós de recurso por bloco (`ResourceNode`) com tipo e quantidade
- Rendimento variável baseado no nível de proficiência
- Cooldown de nós de recurso (regeneração por ticks)

### ❌ Fora do escopo

- Crafting com recursos coletados (ver POC 26)
- Interface visual de coleta elaborada
- Ferramentas específicas para coleta (picareta, vara de pesca)

## Critério de Aceite

- [ ] Botão "Coletar" funciona quando jogador está no bloco certo
- [ ] XP de proficiência sobe a cada coleta bem-sucedida
- [ ] Item coletado é adicionado ao inventário
- [ ] Nível de proficiência mais alto → melhor rendimento (mais itens ou itens melhores)
- [ ] Nó de recurso entra em cooldown após coleta
- [ ] Log mostra XP ganho, nível de proficiência e itens coletados

## Estrutura Sugerida

```
pocs/25-coleta-proficiencias/
├── README.md
└── Assets/
    └── Scripts/
        ├── GatherAction.cs         # Ação de coleta de recurso
        ├── ProficiencyData.cs       # Dados de uma proficiência
        ├── ProficiencyTracker.cs    # Rastreamento de XP e nível
        └── ResourceNode.cs         # Nó de recurso no mundo
```

## Referências

- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
