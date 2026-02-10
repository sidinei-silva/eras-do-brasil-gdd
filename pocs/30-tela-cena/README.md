# POC 30 — Tela de Cena (Split)

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | F: UI e Visual                 |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar a tela de cena com layout dividido: ilustração à esquerda e painel de texto narrativo + botões de ação à direita, no estilo Roadwarden.

## Contexto

Valida a regra do GDD sobre **UI Fase 1**: a tela de cena é a interface de exploração dentro de um bloco/nó, onde o jogador vê a ilustração do local e interage com opções narrativas e ações disponíveis.

📖 Referência: [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 08  | Navegação por Blocos | Cenas são carregadas ao entrar em um bloco |

## Escopo

### ✅ Dentro do escopo

- `SceneViewController` — controlador da tela de cena (carrega dados, gerencia transições)
- `IllustrationPanel` — painel esquerdo com ilustração do local
- `NarrativePanel` — painel direito com texto narrativo (scrollable)
- `ActionButtonGroup` — grupo de botões de ação contextuais
- Layout split-screen responsivo
- Transições suaves entre cenas

### ❌ Fora do escopo

- Sistema de diálogo completo com NPCs (POC 16)
- Ilustrações animadas ou parallax
- Áudio contextual por cena
- Geração procedural de descrições

## Critério de Aceite

- [ ] Layout dividido: ilustração à esquerda, texto + botões à direita
- [ ] Ilustração do local é carregada corretamente
- [ ] Texto narrativo é exibido com scroll quando necessário
- [ ] Botões de ação aparecem conforme o contexto da cena
- [ ] Transição suave ao mudar de cena
- [ ] Layout se adapta a diferentes resoluções
- [ ] Estilo visual consistente com a identidade do jogo (pergaminho, tons terrosos)

## Estrutura Sugerida

```
pocs/30-tela-cena/
├── README.md
└── Assets/
    └── Scripts/
        ├── SceneViewController.cs    # Controlador da tela de cena
        ├── IllustrationPanel.cs      # Painel de ilustração (esquerda)
        ├── NarrativePanel.cs         # Painel narrativo (direita)
        └── ActionButtonGroup.cs      # Grupo de botões de ação
```

## Referências

- [05 — UI Fase 1: Exploração e Combate](../../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)
- [02 — UI, HUD e Tipografia](../../gdd/04_Design_Visual/02_UI_HUD_e_Tipografia.md)
- [05 — Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
