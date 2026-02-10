# POC 29 — Mapa de Nós

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | F: UI e Visual                 |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar o mapa de navegação estilo pergaminho com nós clicáveis representando locais do mundo (acampamentos, cidades, locais perigosos, pontos de interesse).

## Contexto

Valida a regra do GDD sobre **UI Fase 1**: o mapa de nós é a interface principal de navegação no mundo, apresentando locais como ícones clicáveis sobre um pergaminho, com névoa de guerra para áreas não exploradas.

📖 Referência: [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 08  | Navegação por Blocos | Sistema de blocos/nós de navegação do mundo |

## Escopo

### ✅ Dentro do escopo

- `NodeMapRenderer` — renderização do mapa estilo pergaminho
- `MapNode` — representação de um nó no mapa (posição, tipo, estado)
- `MapNodeIcon` — ícones visuais por tipo (?, fogueira, caveira, cidade)
- `FogOfWar` — névoa de guerra para nós não explorados
- `MapUI` — interface de interação (clique, tooltip, zoom)
- Conexões visuais entre nós (caminhos/estradas)

### ❌ Fora do escopo

- Mapa mundi completo com múltiplos atos
- Fast-travel automático entre nós distantes
- Marcadores customizáveis pelo jogador
- Animações de viagem entre nós

## Critério de Aceite

- [ ] Mapa renderiza com visual de pergaminho
- [ ] Nós exibem ícones distintos por tipo (?, fogueira, caveira, cidade)
- [ ] Nós são clicáveis e disparam navegação
- [ ] Nós não explorados aparecem cobertos por névoa de guerra
- [ ] Nós explorados ficam permanentemente visíveis
- [ ] Conexões entre nós são exibidas como caminhos
- [ ] Tooltip exibe informações básicas do nó ao passar o mouse

## Estrutura Sugerida

```
pocs/29-mapa-nos/
├── README.md
└── Assets/
    └── Scripts/
        ├── NodeMapRenderer.cs    # Renderização do mapa pergaminho
        ├── MapNode.cs            # Representação de um nó
        ├── MapNodeIcon.cs        # Ícones visuais por tipo de nó
        ├── FogOfWar.cs           # Névoa de guerra
        └── MapUI.cs              # Interface de interação do mapa
```

## Referências

- [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
- [01 — Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)
