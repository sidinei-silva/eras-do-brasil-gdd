# 🛠️ Roadmap Técnico e POCs

Este documento detalha a execução técnica das 6 Fases planejadas no `Project Plan.md`, alinhando a tecnologia com a estratégia de desenvolvimento "Tick-Tock" (Solo -> Co-op) e a stack Unity.

## 🖥️ Stack Tecnológica Definida

| Componente | Tecnologia | Justificativa |
| :--- | :--- | :--- |
| **Engine** | **Unity (Versão LTS)** | Robustez, suporte nativo a 2D/Pixel Art, vasta documentação e Assets. |
| **Linguagem** | **C# (.NET)** | Tipagem forte, excelente para sistemas de regras complexos (RPG), integração perfeita com VS Code + Copilot. |
| **Netcode (Co-op)** | **Unity Netcode for GameObjects (NGO)** | Solução oficial da Unity para arquitetura Host-Client (P2P), ideal para o nosso modelo "Eco Compartilhado" sem servidor dedicado. |
| **Transporte** | **Unity Transport / Steamworks (Futuro)** | Começamos com conexão direta via IP (Dev) e migramos para Lobby Steamworks no lançamento. |
| **Dados (Database)** | **ScriptableObjects (Unity) + JSON** | Armazenamento local de regras, itens e classes (ScriptableObjects) e Saves (JSON). Sem banco de dados externo. |
| **UI** | **Unity UI Toolkit ou Canvas** | Flexível para as interfaces ricas de texto e menus das Fases 1 e 2. |

---

## 🧪 Plano de POCs (Provas de Conceito)

As POCs servem para validar riscos técnicos isolados antes de iniciar a produção de cada grande fase.

### POC 01: O Motor de Regras (Pré-Fase 1)
* **Objetivo:** Validar a matemática do sistema (Livro de Regras) em C# puro, sem gráficos.
* **Escopo:**
    * Implementar a classe `Personagem` (Atributos, Inventário, Classes).
    * Implementar o `SistemaDeCombate` (Turnos, Iniciativa, D20 vs CD).
    * Interface mínima (Botões de Debug) para simular: "Atacar", "Usar Habilidade".
* **Resultado Esperado:** Um log de console mostrando um combate completo respeitando atributos e rolagens.

### POC 02: Sincronia Host-Client (Pré-Fase 2)
* **Objetivo:** Validar a arquitetura P2P do Netcode for GameObjects.
* **Escopo:**
    * Criar um Lobby simples (Host inicia, Client conecta via IP Local).
    * Sincronizar uma variável de estado global (ex: `GlobalTicks`).
    * Implementar o "Salvamento Atômico" para troca de itens (Item sai do inventário A e entra no B com confirmação).
* **Resultado Esperado:** Dois executáveis rodando onde o Player A joga um item e o Player B pega, atualizando ambos os inventários sem erros.

### POC 03: Exploração Visual e Ticks (Pré-Fase 3)
* **Objetivo:** Validar a sensação de "Mundo Vivo" e movimentação por blocos.
* **Escopo:**
    * Criar o sistema de `Bloco` (Cena com Sprite de fundo + Pontos de Interesse).
    * Implementar o gasto de Ticks ao mover e a reação do ambiente (ex: mudar iluminação Dia/Noite).
* **Resultado Esperado:** Navegar por 3 telas (Vila -> Floresta -> Ruína) com feedback visual de tempo passando.

---

## 📅 Execução Técnica das Fases (Alinhamento com Project Plan)

### Fase 1: RPG de Mesa Digital (MVP Offline)
* **Foco Técnico:** Arquitetura de Dados e UI.
* **Implementação:** O jogo será essencialmente Telas de UI (Menus, Textos, Fichas) alimentadas pelos ScriptableObjects. O combate é resolvido matematicamente e exibido em log.
* **Entrega:** Build jogável do Ato 1 (focada em leitura e decisão) para balancear as regras.

### Fase 2: RPG de Mesa Digital (MVP Co-op)
* **Foco Técnico:** Implementação do NGO (Netcode).
* **Implementação:** Refatorar o `GameManager` para suportar autoridade Server (Host). O Client envia RPCs ("ServerRpc: QueroAtacar") e o Host valida e responde ("ClientRpc: ResultadoDoAtaque").
* **Entrega:** A mesma build da Fase 1, agora jogável por duas pessoas via LAN/Direct IP.

### Fase 3: Jogo Digital v1 - Protótipo Visual (Offline)
* **Foco Técnico:** Gráficos 2D e Integração de Assets.
* **Implementação:** Substituir os menus de texto por Cenas 2D com Pixel Art. Implementar o controlador de personagem para "Point and Click" nos blocos.

### Fase 4: Jogo Digital v1 - Mundo Conectado (Co-op)
* **Foco Técnico:** Sincronia de Estado de Mundo.
* **Implementação:** Garantir que quando o Host muda de bloco, o Client vê a transição. Sincronizar posição de NPCs e estado de objetos interativos (baús abertos/fechados).

### Fase 5 e 6: Jogo Digital v2 (Núcleo Tático + Co-op)
* **Foco Técnico:** Grid System e Pathfinding.
* **Implementação:** Implementar Grid Isométrico (Tilemap). Criar lógica de movimentação tática (custo de movimento, alcance, bloqueio).
* **Entrega:** O combate deixa de ser abstrato (Menu) e passa a ser posicional (Grid).

---

## 📂 Estrutura de Dados (Data-Driven)

Para facilitar o trabalho com IA (Copilot) e edição no Unity:

1.  **ScriptableObjects (Templates):** Definem o que existe no jogo.
    * Ex: `EspadaFerro.asset` (Dados imutáveis: Dano 1d6, Sprite, Nome).
    * Ex: `ClasseGuerreiro.asset` (Lista de Habilidades, Atributos Base).
2.  **Classes C# (Runtime):** Definem o que está acontecendo agora.
    * Ex: `ItemInstance.cs` (Referência ao Template + Durabilidade Atual).
    * Ex: `PersonagemRuntime.cs` (PV Atual, Lista de ItemInstances).
3.  **JSON (Persistência):**
    * O Save Game serializa apenas as classes Runtime para JSON.