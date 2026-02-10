# 🗺️ Roadmap de Desenvolvimento — Eras do Brasil

> **Fonte de Verdade** para todas as fases, POCs e tarefas de desenvolvimento do projeto.
> Este documento consolida e substitui os antigos `02_Checklist`, `03_Roadmap_Tecnico` e `04_Roadmap_Detalhado`.

**Navegação rápida:**
- [Stack Tecnológica](#-stack-tecnológica)
- [Estrutura de Dados](#-estrutura-de-dados-data-driven)
- [Fase 0: POCs](#-fase-0-pocs--provas-de-conceito)
- [Fase 1: MVP](#-fase-1-mvp--o-despertar)
- [Fase 2: Pré-Alpha](#-fase-2-pré-alpha--o-mundo-vivo)
- [Fase 3: Alpha](#-fase-3-alpha--o-jogo-ganha-vida)
- [Fase 4: Beta](#-fase-4-beta--a-tática)
- [Fase 5: Release](#-fase-5-release--a-raiz-conecta)
- [Resumo de Progresso](#-resumo-de-progresso)

**Documentos relacionados:**
- [Project Plan](../Project%20Plan.md) — Visão geral, público-alvo e mecânicas
- [Game Pitch](../Game_Pitch.md) — Apresentação do jogo
- [Estratégia de Dados](01_Estrategia_de_Dados_e_Documentacao.md) — Filosofia "Alma vs. Lógica"
- [Schemas Estruturais](../06_Dados_e_Assets/01_Schemas_Estruturais.md) — Formato JSON de entidades
- [UI Fase 1](../04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md) — Referência de interface (exploração e combate estático)
- [UI Fase 2](../04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md) — Referência de interface (grid tático)
- [Atlas do Eco](../05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md) — Mapa do Ato 1

---

## 🖥️ Stack Tecnológica

| Componente | Tecnologia | Justificativa |
| :--- | :--- | :--- |
| **Engine** | **Unity (Versão LTS)** | Robustez, suporte nativo a 2D/Pixel Art, vasta documentação e assets. Aprendizado progressivo via POCs. |
| **Linguagem** | **C# (.NET)** | Tipagem forte, excelente para regras de RPG, integração com VS Code + Copilot. |
| **Netcode (Co-op)** | **Unity Netcode for GameObjects (NGO)** | Solução oficial da Unity para Host-Client P2P, ideal para o modelo "Eco Compartilhado". |
| **Transporte** | **Unity Transport / Steamworks (Futuro)** | Conexão direta via IP (Dev) → Lobby Steamworks (Release). |
| **Dados** | **ScriptableObjects + JSON** | Templates imutáveis (ScriptableObjects) + Saves serializados (JSON). Sem banco de dados externo. |
| **UI** | **Unity UI Toolkit** | Interfaces ricas de texto, menus e HUD. |
| **IA (Desenvolvimento)** | **GitHub Copilot (VS Code)** | IA centralizada para código, GDD e criatividade. Minimiza pulverização de contexto entre plataformas. |

---

## 📂 Estrutura de Dados (Data-Driven)

> Detalhes completos em [Estratégia de Dados](01_Estrategia_de_Dados_e_Documentacao.md) e [Schemas](../06_Dados_e_Assets/01_Schemas_Estruturais.md).

| Camada | Tecnologia | Propósito | Exemplo |
|---|---|---|---|
| **Template** | ScriptableObject | Dados imutáveis do jogo | `EspadaFerro.asset` (Dano 1d6, Sprite) |
| **Runtime** | Classe C# | Estado atual em memória | `ItemInstance.cs` (Durabilidade atual, Ref ao Template) |
| **Persistência** | JSON | Save Game serializado | Apenas classes Runtime serializadas |

---

## 🧪 Fase 0: POCs — Provas de Conceito

> **Objetivo:** Validar riscos técnicos isolados. Cada POC é um mini-projeto dentro da Unity que testa UMA mecânica. O código de cada POC será reutilizado nas fases seguintes.

**Filosofia:** Desenvolvimento progressivo — construir peça por peça, mecânica por mecânica. Quando você olhar para trás, terá muitas peças prontas que só precisam ser conectadas.

**Estrutura de pastas:** Cada POC vive em `pocs/XX-nome-da-poc/` com seu próprio `README.md`.

**Legenda de Prioridade:**
- 🟢 **Core/Crítico** — O jogo não funciona sem isso
- 🟡 **Importante** — Necessário para a experiência completa
- 🔵 **Polimento** — Melhoria de qualidade ou estética

### Módulo A: Motor de Regras (Lógica Pura)

Estas POCs validam a matemática e as regras do GDD em C# puro, sem gráficos.

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 01 | [Fundação de Dados](../../pocs/01-fundacao-dados/) | 🟢 | [Schemas Estruturais](../06_Dados_e_Assets/01_Schemas_Estruturais.md) | Console exibe "Carregados X Itens, Y Inimigos, Z Classes" |
| 02 | [Motor D20](../../pocs/02-motor-d20/) | 🟢 | [Mecânicas Básicas](../01_Livro_de_Regras/02_Mecanicas_Basicas.md) | CLI simula 1000 testes e mostra distribuição de acertos/críticos |
| 03 | [Atributos e Criação](../../pocs/03-atributos-criacao/) | 🟢 | [Criação de Personagem](../01_Livro_de_Regras/03_Criacao_de_Personagem.md) | Personagem criado com point-buy (27 pts), modificadores calculados corretamente |
| 04 | [Tier Scaling](../../pocs/04-tier-scaling/) | 🟢 | [Tiers e Evolução](../02_Livro_de_Classes/01_Tiers_e_Evolucao.md) | Simular evolução Tier 1→3, validar que números não "quebram" o balanceamento |
| 05 | [Herança de Habilidades](../../pocs/05-heranca-habilidades/) | 🟢 | [Alternância de Classes](../02_Livro_de_Classes/02_Alternancia_de_Classes.md), [Herança](../02_Livro_de_Classes/03_Heranca_de_Habilidades.md) | Trocar classe mantém ativas herdadas, passivas não; log prova a lógica |
| 06 | [Matriz de Itens 5x5](../../pocs/06-matriz-itens/) | 🟢 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | Gerar 50 itens aleatórios com Qualidade×Raridade, validar bônus e durabilidade |

### Módulo B: Mundo e Tempo

Estas POCs validam o sistema de ticks, navegação e simulação do mundo.

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 07 | [Motor de Ticks](../../pocs/07-motor-ticks/) | 🟢 | [Exploração e Mundo](../01_Livro_de_Regras/05_Exploracao_e_Mundo.md) | Botão "Esperar" avança Tick, relógio Dia/Noite atualiza, PV regenera |
| 08 | [Navegação por Blocos](../../pocs/08-navegacao-blocos/) | 🟢 | [Atlas do Eco](../05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md) | Navegar Vila→Floresta→Ruínas, gastando Ticks corretos por terreno |
| 09 | [Eventos de Mundo](../../pocs/09-eventos-mundo/) | 🟡 | [Exploração e Mundo](../01_Livro_de_Regras/05_Exploracao_e_Mundo.md) | Eventos aleatórios disparam ao entrar em bloco (texto + escolha) |
| 10 | [Relógio da Ruptura](../../pocs/10-relogio-ruptura/) | 🟡 | [Ato 1](../03_Enredo_e_Mundo/01_Ato_1_A_Primeira_Ruptura.md) | Relógio global de 500 Ticks avança; cenário muda fase visual no Tick 100/250/400 |
| 11 | [Clima e Maré](../../pocs/11-clima-mare/) | 🟡 | [Atlas do Eco](../05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md) | Ciclo de maré (100 Ticks), clima influencia visibilidade e movimentação |

### Módulo C: NPCs e IA

Estas POCs validam o sistema de NPCs com vida própria.

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 12 | [Rotinas de NPCs](../../pocs/12-rotinas-npcs/) | 🟢 | [Mundo Vivo e NPCs](../01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md) | NPC Ferreiro sai de casa (Tick 10), vai à forja (Tick 20), volta (Tick 50) |
| 13 | [Utility AI](../../pocs/13-utility-ai/) | 🟡 | [Mundo Vivo e NPCs](../01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md) | NPC com fome prioriza comer; NPC com medo foge; necessidades decaem por tick |
| 14 | [Sistema de Fofoca](../../pocs/14-fofoca-npcs/) | 🟡 | [Mundo Vivo e NPCs](../01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md) | 2 NPCs no mesmo bloco trocam informações; jogador pergunta e NPC responde o que sabe |
| 15 | [Facções e Reputação](../../pocs/15-faccoes-reputacao/) | 🟡 | [Mundo Vivo e NPCs](../01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md) | Matar inimigo de facção X altera reputação; NPC muda comportamento baseado nela |
| 16 | [Diálogos Ramificados](../../pocs/16-dialogos/) | 🟡 | [Mundo Vivo e NPCs](../01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md) | Árvore de diálogo com condições (reputação, item possuído, classe ativa) |

### Módulo D: Combate

Estas POCs validam o sistema de combate em suas duas fases.

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 17 | [Combate Estático (Fase 1)](../../pocs/17-combate-estatico/) | 🟢 | [Sistema de Combate](../01_Livro_de_Regras/04_Sistema_de_Combate.md) | Combate completo: Iniciativa → Turnos → D20 vs Defesa → Dano → Loot. Log com matemática. |
| 18 | [Status e Condições](../../pocs/18-status-condicoes/) | 🟢 | [Sistema de Combate](../01_Livro_de_Regras/04_Sistema_de_Combate.md) | Aplicar Envenenado, Atordoado, Queimando etc; efeitos processados corretamente por turno |
| 19 | [Habilidades em Combate](../../pocs/19-habilidades-combate/) | 🟢 | [Magia e Espiritualidade](../01_Livro_de_Regras/07_Magia_e_Espiritualidade.md) | Usar habilidades ativas, custo de recurso, efeitos de área, fadiga mágica |
| 20 | [Loot e Recompensas](../../pocs/20-loot-recompensas/) | 🟡 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | Tabela de loot ponderada; drops de qualidade/raridade distribuídos corretamente |
| 21 | [Grid Tático (Fase 2)](../../pocs/21-grid-tatico/) | 🟡 | [UI Fase 2](../04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md) | Tilemap isométrico, personagem anda no grid respeitando obstáculos |
| 22 | [Pathfinding A*](../../pocs/22-pathfinding/) | 🟡 | [UI Fase 2](../04_Design_Visual/06_UI_Fase_2_Combate_Tatico.md) | Clique-e-anda com desvio de obstáculos; custo de terreno diferente por tile |
| 23 | [Combate Espacial](../../pocs/23-combate-espacial/) | 🟡 | [Sistema de Combate](../01_Livro_de_Regras/04_Sistema_de_Combate.md) | Alcance real, AoE visual, cobertura (+2 Def), ataque de oportunidade |

### Módulo E: Economia e Crafting

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 24 | [Inventário](../../pocs/24-inventario/) | 🟢 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | UI de inventário, equipar/desequipar, peso/capacidade, drag & drop |
| 25 | [Coleta e Proficiências](../../pocs/25-coleta-proficiencias/) | 🟢 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | Botão "Coletar" no bloco certo; XP de proficiência sobe; item adicionado |
| 26 | [Crafting](../../pocs/26-crafting/) | 🟡 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | Receita + recursos + local + teste D20 → item criado com qualidade variável |
| 27 | [Comércio e NPCs](../../pocs/27-comercio/) | 🟡 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | Comprar/vender com NPC; preços regionais; interface de troca |

### Módulo F: UI e Visual

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 28 | [HUD Principal](../../pocs/28-hud-principal/) | 🟢 | [UI Fase 1](../04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md) | Barra superior: retrato, PV/XP, recursos, moeda, relógio de ticks |
| 29 | [Mapa de Nós](../../pocs/29-mapa-nos/) | 🟡 | [UI Fase 1](../04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md) | Mapa pergaminho com ícones clicáveis (?, fogueira, caveira, cidade) |
| 30 | [Tela de Cena (Split)](../../pocs/30-tela-cena/) | 🟡 | [UI Fase 1](../04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md) | Layout dividido: ilustração à esquerda, texto + botões à direita (estilo Roadwarden) |
| 31 | [Tela de Combate Estático](../../pocs/31-tela-combate/) | 🟡 | [UI Fase 1](../04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md) | Sprites de inimigos + personagem + hotbar + log de combate com dano flutuante |
| 32 | [Criação de Personagem](../../pocs/32-criacao-personagem/) | 🟡 | [Criação de Personagem](../01_Livro_de_Regras/03_Criacao_de_Personagem.md) | Telas em etapas: Origem → Classe → Atributos → Proficiências → Equipamento → Confirmar |

### Módulo G: Persistência e Rede

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 33 | [Save/Load (JSON)](../../pocs/33-save-load/) | 🟢 | [Schemas](../06_Dados_e_Assets/01_Schemas_Estruturais.md) | Salvar estado completo do personagem; recarregar com HP/Loot/Posição intactos |
| 34 | [Conexão P2P Básica](../../pocs/34-conexao-p2p/) | 🟡 | [Project Plan §5](../Project%20Plan.md) | Duas instâncias: Host cria, Client conecta. Console mostra "Client Connected" |
| 35 | [Sincronia de Ticks P2P](../../pocs/35-sincronia-ticks/) | 🟡 | [Project Plan §5](../Project%20Plan.md) | Player A espera → Tick de Player B atualiza; Host autoritativo |
| 36 | [Trade Atômico P2P](../../pocs/36-trade-atomico/) | 🟡 | [Economia e Crafting](../01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md) | Drop + Pickup sincronizado; se conexão cair, item não duplica nem some |

### Módulo H: Missões e Narrativa

| # | POC | Prioridade | Regra do GDD Validada | Critério de Aceite |
|---|---|---|---|---|
| 37 | [Sistema de Quests](../../pocs/37-sistema-quests/) | 🟡 | [Enredo e Mundo](../03_Enredo_e_Mundo/00_Conceitos_Centrais_do_Mundo.md) | Quest com estados (Oculta→Ativa→Concluída); gatilhos por tick, bloco, item |
| 38 | [Mini-Campanha Completa](../../pocs/38-mini-campanha/) | 🟡 | [Mini-Campanha Indígena 01](../03_Enredo_e_Mundo/1_MiniCampanhas_Indigena/Indigena_01_O_Cacador_que_Nao_Voltou.md) | "O Caçador que Não Voltou" jogável do início ao fim com todas as mecânicas |

---

## 🛡️ Fase 1: MVP — "O Despertar"

> **Objetivo:** Um loop jogável de 15–30 minutos. Criar personagem, explorar a Vila de São Tomé, lutar contra um Lobo e voltar para descansar.
> **Resultado:** Build funcional para validar o core loop completo.

### Pré-requisitos (POCs necessárias)
- ✅ POC 01 (Fundação de Dados)
- ✅ POC 02 (Motor D20)
- ✅ POC 03 (Atributos e Criação)
- ✅ POC 07 (Motor de Ticks)
- ✅ POC 08 (Navegação por Blocos)
- ✅ POC 17 (Combate Estático)
- ✅ POC 24 (Inventário)
- ✅ POC 28 (HUD Principal)
- ✅ POC 33 (Save/Load)

### Escopo do MVP

| Sistema | Conteúdo |
|---|---|
| **Origens** | 1 (Indígena) |
| **Classes** | 1 (Guerreiro Tribal) |
| **Blocos** | 3 (Vila de São Tomé, Floresta do Norte, Ruínas Queimadas) |
| **Inimigos** | 2 (Lobo, Espírito Menor) |
| **Itens** | 5 iniciais (conforme [Dados Iniciais](../06_Dados_e_Assets/03_Dados_Iniciais_Ato1.md)) |
| **UI** | HUD + Mapa de Nós (texto) + Combate (texto/log) + Inventário |
| **Save** | JSON local |

### Core Loop do MVP
```
Criar Personagem → Explorar Bloco (gastar Ticks)
    → Encontrar Evento/Combate (D20 + Mods)
    → Coletar Loot/XP
    → Voltar à Vila (descansar, equipar)
    → Repetir
```

---

## ⚔️ Fase 2: Pré-Alpha — "O Mundo Vivo"

> **Objetivo:** Adicionar profundidade ao MVP com NPCs, economia e o Relógio da Ruptura. O mundo começa a "respirar".

### Pré-requisitos adicionais
- ✅ POC 05 (Herança de Habilidades)
- ✅ POC 06 (Matriz de Itens)
- ✅ POC 09 (Eventos de Mundo)
- ✅ POC 10 (Relógio da Ruptura)
- ✅ POC 12 (Rotinas de NPCs)
- ✅ POC 16 (Diálogos)
- ✅ POC 20 (Loot e Recompensas)
- ✅ POC 25 (Coleta e Proficiências)
- ✅ POC 32 (Criação de Personagem UI)

### Entregas

| Sprint | Foco | Entrega |
|---|---|---|
| **2.1** | **O Relógio** | Relógio Global de 500 Ticks. Bandeirantes avançam 1 bloco/15 Ticks. Cenário muda de fase (cor do céu). |
| **2.2** | **NPCs e Diálogos** | 3 NPCs com rotinas (Ferreiro, Pajé, Guarda). Diálogos com condições. Sistema de Fofoca básico. |
| **2.3** | **Economia** | Coleta de 3 recursos. Crafting de 2 receitas. Venda e compra com NPC comerciante. Matriz 5x5 em itens. |
| **2.4** | **Classes** | 3 Origens × 1 Classe cada = 3 classes jogáveis. Troca via Dom da Revivência com herança de ativa. |
| **2.5** | **Conteúdo** | Todos os 8 blocos do Ato 1 navegáveis. Eventos em cada bloco. 1 mini-campanha completa. |

---

## 🎨 Fase 3: Alpha — "O Jogo Ganha Vida"

> **Objetivo:** Substituir placeholders por Pixel Art. O jogo passa a parecer um jogo, não uma planilha. Incluir todas as 12 classes.

### Pré-requisitos adicionais
- ✅ POC 04 (Tier Scaling)
- ✅ POC 11 (Clima e Maré)
- ✅ POC 13 (Utility AI)
- ✅ POC 14 (Fofoca NPCs)
- ✅ POC 15 (Facções)
- ✅ POC 18 (Status/Condições)
- ✅ POC 19 (Habilidades em Combate)
- ✅ POC 26 (Crafting)
- ✅ POC 27 (Comércio)
- ✅ POC 29 (Mapa de Nós visual)
- ✅ POC 30 (Tela de Cena Split)
- ✅ POC 31 (Tela de Combate visual)
- ✅ POC 37 (Sistema de Quests)

### Entregas

| Sprint | Foco | Entrega |
|---|---|---|
| **3.1** | **Arte e Cenários** | Sprites de fundo para 8 blocos. Mapa de Nós visual (pergaminho pixel art). Ciclo Dia/Noite visual. |
| **3.2** | **Personagens** | Sprites das 12 classes (idle + ataque). Tela de criação visual com todas as origens. |
| **3.3** | **Combate Visual** | Sprites de 5 inimigos. Dano flutuante. Ícones de status. Animações de ataque básicas. |
| **3.4** | **HUD Completa** | Barras animadas de PV/XP. Relógio visual (sol/lua). Molduras de madeira/corda. Estética marajoara. |
| **3.5** | **12 Classes + Tiers** | Todas as 12 classes Tier 1 jogáveis. Evolução para Tier 2 (4 classes de teste). |
| **3.6** | **Ato 1 Completo** | Campanha principal "A Primeira Ruptura" jogável. 6 mini-campanhas. Boss final. |
| **3.7** | **IA Completa** | NPCs com Utility AI (necessidades). Sistema de Fofoca completo. Facções e reputação. |

---

## ♟️ Fase 4: Beta — "A Tática"

> **Objetivo:** Ativar o módulo de combate tático com grid isométrico. Migração do combate estático para posicional.

### Pré-requisitos adicionais
- ✅ POC 21 (Grid Tático)
- ✅ POC 22 (Pathfinding A*)
- ✅ POC 23 (Combate Espacial)
- ✅ POC 38 (Mini-Campanha Completa)

### Entregas

| Sprint | Foco | Entrega |
|---|---|---|
| **4.1** | **O Grid** | Tilemap isométrico. Personagem anda no grid. Obstáculos e terreno diferenciado. |
| **4.2** | **Combate Posicional** | Alcance real (melee vs ranged). Cobertura (+2 Def). Flanco. Ataque de oportunidade. |
| **4.3** | **AoE e Habilidades** | Áreas de efeito visuais. Linha de visão. Habilidades espaciais (empurrão, terreno). |
| **4.4** | **Balanceamento** | Ajuste fino de todas as 12 classes no grid. Curva de XP. Economia. Dificuldade do Boss. |
| **4.5** | **18 Mini-Campanhas** | Todas as 18 mini-campanhas jogáveis e balanceadas. Regra de recompensa "2-1-3". |

---

## 🌿 Fase 5: Release — "A Raiz Conecta"

> **Objetivo:** Implementar o modo cooperativo P2P e polir para lançamento (Acesso Antecipado).

### Pré-requisitos adicionais
- ✅ POC 34 (Conexão P2P)
- ✅ POC 35 (Sincronia de Ticks)
- ✅ POC 36 (Trade Atômico)

### Entregas

| Sprint | Foco | Entrega |
|---|---|---|
| **5.1** | **Conexão** | Lobby (Host / Join IP). Chat in-game. Dois jogadores no mesmo mundo. |
| **5.2** | **Sincronia de Mundo** | Ticks compartilhados. NPCs sincronizados. Eventos de mundo em ambos os clientes. |
| **5.3** | **Combate Co-op** | Turnos multiplayer (Player A → Player B → Inimigos IA). Combos de habilidades. |
| **5.4** | **Economia Co-op** | Trade atômico (sem duplicação). Drop/Pickup sincronizado. |
| **5.5** | **Polimento** | Testes de QA. Balanceamento co-op. Tutorial. Steam Workshop prep. |
| **5.6** | **Acesso Antecipado** | Build final para publicação. Integração Steamworks (transporte + achievements). |

---

## ✅ Resumo de Progresso

### Design & Regras (Concluído)
- [x] Livro de Regras completo (9 capítulos)
- [x] Livro de Classes (12 classes Tier 1 + sistema de Tiers)
- [x] Enredo e Mundo (Ato 1 + 18 mini-campanhas + linha eco-histórica)
- [x] Design Visual (estilo, paleta, tipografia, UI Fase 1 e 2)
- [x] Atlas do Eco Ato 1 (mapa de nós com distâncias)
- [x] Game Pitch e Project Plan
- [x] Schemas JSON (Classe, Item, Inimigo)

### Fábrica de Dados (Concluído)
- [x] Schemas estruturais definidos
- [x] Lista de assets (Art Bible)
- [x] Dados mockup iniciais (5 itens, 3 inimigos, 1 classe)

### Desenvolvimento (Em Andamento)
- [ ] Setup do projeto Unity
- [ ] POCs do Módulo A (Motor de Regras)
- [ ] POCs do Módulo B (Mundo e Tempo)
- [ ] ...restante das POCs e fases

---

**Última atualização:** 2026-02-10
