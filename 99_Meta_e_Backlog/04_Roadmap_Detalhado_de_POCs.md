# 🗺️ Roadmap Detalhado e Backlog de Desenvolvimento

Este documento "pulveriza" as fases macro do projeto em tarefas de engenharia e design testáveis. Cada item (POC ou Feature) deve ser tratado como uma entrega funcional.

**Legenda de Prioridade:**
* 🟢 **Core/Crítico:** O jogo não funciona sem isso.
* 🟡 **Importante:** Necessário para a experiência completa.
* 🔵 **Polimento/Visual:** Melhoria de qualidade de vida ou estética.

---

## 🏗️ FASE 1: O Motor de Regras (RPG de Mesa Digital Offline)
**Objetivo:** Criar o "Cérebro" do jogo. Uma versão jogável apenas com UI (Menus e Textos), validando a matemática, economia e fluxo de dados. Sem bonecos andando, apenas números e decisões.

### 🟢 POC 1.1: A Fundação de Dados (Data-Driven)
*Esta etapa garante que a Unity saiba ler os JSONs criados.*
* **Tarefa 1.1.A:** Criar Scripts de Modelo (`ItemData.cs`, `EnemyData.cs`, `ClassData.cs`) sem herança de MonoBehaviour.
* **Tarefa 1.1.B:** Implementar `DatabaseManager` (Singleton) que lê os arquivos da pasta `Resources/Data`.
* **Critério de Aceite:** Console da Unity exibe "Sucesso: Carregados X Itens, Y Inimigos, Z Classes" ao dar Play.

### 🟢 POC 1.2: O Motor de Ticks (O Coração do Mundo)
*Esta etapa cria a passagem de tempo.*
* **Tarefa 1.2.A:** Implementar o `TimeManager`. Criar a variável `CurrentTick`.
* **Tarefa 1.2.B:** Criar UI simples (Texto) mostrando "Dia 1, Hora 08:00". Botão "Esperar" que avança Ticks.
* **Tarefa 1.2.C:** Implementar sistema de regeneração passiva (ex: PV regenera 1 ponto a cada 10 Ticks).
* **Critério de Aceite:** Clicar em "Esperar" atualiza o relógio e regenera PV do personagem de teste.

### 🟢 POC 1.3: Sistema de Navegação Abstrata (O Atlas)
*Esta etapa cria a movimentação por "Nós" (Estilo Azure Dragon/Sorcery).*
* **Tarefa 1.3.A:** Criar classe `LocationNode` (Nome, Descrição, Lista de Conexões).
* **Tarefa 1.3.B:** Criar UI de Navegação (Botões dinâmicos: "Ir para Floresta", "Ir para Vila").
* **Tarefa 1.3.C:** Conectar Navegação aos Ticks (Viajar custa X Ticks).
* **Critério de Aceite:** Jogador começa na "Vila", clica em "Ir para Floresta", gasta 2 Ticks, e a tela muda a descrição para "Floresta Escura".

### 🟢 POC 1.4: Inventário e Proficiências (Loop de Economia)
* **Tarefa 1.4.A:** Criar UI de Inventário (Lista de Itens com Ícones e Quantidade).
* **Tarefa 1.4.B:** Implementar lógica de `Gathering` (Botão "Coletar Madeira" no nó de Floresta).
* **Tarefa 1.4.C:** Implementar ganho de XP em Proficiência ao coletar.
* **Critério de Aceite:** Coletar madeira adiciona item ao inventário, consome Tick e sobe XP de "Coleta".

### 🟢 POC 1.5: Combate Matemático (Loop de Batalha)
* **Tarefa 1.5.A:** Criar UI de Combate (Log de Texto + Botões: Atacar, Habilidade, Fugir).
* **Tarefa 1.5.B:** Implementar Lógica de Turnos (Iniciativa D20 + Astúcia).
* **Tarefa 1.5.C:** Implementar Resolução de Ação (Ataque D20 vs Defesa Inimigo).
* **Critério de Aceite:** Jogador mata um "Dummy" (Inimigo teste), Log mostra rolagens corretas, Jogador ganha Loot no final.

---

## 🔗 FASE 2: O Elo Perdido (Multiplayer P2P - Texto)
**Objetivo:** Pegar o jogo de texto da Fase 1 e permitir que dois jogadores interajam na mesma sessão.

### 🟡 POC 2.1: Conexão Básica (Netcode)
* **Tarefa 2.1.A:** Integrar *Unity Netcode for GameObjects*.
* **Tarefa 2.1.B:** Criar UI de Lobby (Host / Join IP).
* **Critério de Aceite:** Duas instâncias do jogo abertas. Uma cria, a outra entra. Console mostra "Client Connected".

### 🟡 POC 2.2: Sincronia de Ticks (O Relógio Compartilhado)
* **Tarefa 2.2.A:** Refatorar `TimeManager` para ser `NetworkBehaviour`. Host controla o tempo.
* **Tarefa 2.2.B:** Implementar a "Fila de Ações". Se Client viaja (gasta tempo), Host valida e atualiza o relógio global.
* **Critério de Aceite:** Player A clica em "Esperar". O relógio do Player B atualiza sozinho.

### 🟡 POC 2.3: Interação P2P (Trocas)
* **Tarefa 2.3.A:** Criar sistema de "Drop" (Item sai do inventário e vira um objeto na sala atual).
* **Tarefa 2.3.B:** Implementar "Pickup" sincronizado (Quem pegar primeiro, leva).
* **Critério de Aceite:** Player A joga uma espada no chão. Player B pega. Inventários atualizados corretamente em ambos.

---

## 🎨 FASE 3: Protótipo Visual (O Jogo Ganha Vida)
**Objetivo:** Substituir as telas de texto por Pixel Art e cenários, mantendo a mecânica de cliques.

### 🔵 POC 3.1: Visualização do Atlas
* **Tarefa 3.1.A:** Substituir a lista de botões de viagem por um Mapa 2D com pontos clicáveis.
* **Tarefa 3.1.B:** Adicionar Sprite de Fundo dinâmico (muda conforme o Nó atual).
* **Critério de Aceite:** Navegação visual agradável e intuitiva.

### 🔵 POC 3.2: HUD e Feedback
* **Tarefa 3.2.A:** Implementar barras de Vida/Mana animadas.
* **Tarefa 3.2.B:** Adicionar feedback visual de "Tick passando" (ex: relógio girando ou sol/lua mudando).
* **Critério de Aceite:** O jogo parece um "jogo", não uma planilha de Excel.

---

## ♟️ FASE 4: Co-op Visual (Sincronia Visual)
**Objetivo:** Ver o amigo no mundo.

### 🟡 POC 4.1: Avatares Sincronizados
* **Tarefa 4.1.A:** Instanciar um Prefab de Player para cada conexão.
* **Tarefa 4.1.B:** Quando Player A viaja para "Floresta", o avatar dele deve aparecer na tela de "Floresta" do Player B (se ele também estiver lá).
* **Critério de Aceite:** Jogadores se veem nos hubs e locais de exploração.

---

## ⚔️ FASE 5: Núcleo Tático (Grid System - Offline)
**Objetivo:** Substituir o combate de texto (Fase 1.5) por um tabuleiro tático.

### 🟡 POC 5.1: O Grid
* **Tarefa 5.1.A:** Implementar Tilemap Isométrico/Hexagonal.
* **Tarefa 5.1.B:** Lógica de Pathfinding (A*) para clique-e-anda no grid.
* **Critério de Aceite:** Personagem anda no grid respeitando obstáculos.

### 🟡 POC 5.2: Combate Espacial
* **Tarefa 5.2.A:** Adaptar o `SistemaDeCombate` (Fase 1) para checar Alcance (Range) no Grid.
* **Tarefa 5.2.B:** Implementar Área de Efeito (AoE) visual.
* **Critério de Aceite:** Arqueiro só consegue atirar se tiver linha de visão no grid.

---

## ⚔️ FASE 6: Tática Compartilhada (Co-op Final)
**Objetivo:** O combate tático sincronizado.

### 🟡 POC 6.1: Turnos em Rede
* **Tarefa 6.1.A:** Sincronizar o estado do Grid via Netcode.
* **Tarefa 6.1.B:** Gerenciador de Turnos Multiplayer (Player A -> Player B -> Inimigos IA).
* **Critério de Aceite:** Batalha completa tática com dois jogadores contra monstros.