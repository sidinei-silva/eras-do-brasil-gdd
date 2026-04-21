# Estrutura de Dados (JSON Schemas) para o Jogo 'Eras do Brasil'

## 1.0 Introdução: A Arquitetura Data-Driven

Este documento técnico estabelece a estrutura de dados fundamental para o jogo _Eras do Brasil_. De acordo com a filosofia de desenvolvimento "Alma vs. Lógica" do projeto, este material foca exclusivamente na "Lógica", definindo os schemas JSON que servirão como a espinha dorsal para as entidades centrais do jogo no servidor Go. A adoção de uma arquitetura data-driven é crucial para garantir a modularidade, a escalabilidade e a facilidade de manutenção do projeto, permitindo que a equipe de design e narrativa popule o mundo do jogo de forma eficiente e consistente. A seguir, detalharemos a estrutura da primeira entidade central: a classe de personagem.

--------------------------------------------------------------------------------

## 2.0 Schema: Blocks

### 2.1 Estrutura JSON para `Block`

```json
{
  "id": "string",                   // snake_case, ex: "vila_sao_tome" — OBRIGATÓRIO
  "name": "string",                 // nome exibido, ex: "Vila de São Tomé" — OBRIGATÓRIO
  "region": "string",               // região pai, ex: "mata_costeira" — OBRIGATÓRIO
  "type": "string",                 // enum: "urban" | "dense_forest" | "mountain" | "water" | "ruins" | "wasteland" — OBRIGATÓRIO
  "levelRange": [0, 0],             // [min, max] nível recomendado — OBRIGATÓRIO
  "description": "string",          // descrição narrativa curta — OBRIGATÓRIO
  "connections": [                  // arestas saindo deste bloco — OBRIGATÓRIO
    {
      "toBlockId": "string",
      "travelMinutes": 10,          // custo em minutos de jogo (consumido pela 1.2)
      "terrain": "string"           // opcional, ex: "forest_path"
    }
  ],
  "services": [                     // serviços de hub, vazio se não aplicável — opcional
    {
      "id": "string",               // ex: "blacksmith"
      "name": "string",
      "actions": ["string"]
    }
  ],
  "rules": [                        // regras mecânicas ativas no bloco — opcional
    {
      "id": "string",
      "type": "string",             // ex: "improved_rest", "natural_cover"
      "effect": "string"
    }
  ],
  "mobTable": [                     // spawns, vazio em hubs — opcional
    {
      "enemyId": "string",
      "spawnChance": 0.5,
      "quantity": "1d2"
    }
  ],
  "resources": [                    // recursos coletáveis — opcional
    {
      "resourceId": "string",
      "rarity": "string",           // "common" | "uncommon" | "rare" | "epic" | "legendary"
      "spawnChance": 0.6,
      "quantity": "1d3"
    }
  ],
  "tags": ["string"]                // categorização livre, ex: ["safe", "hub"] — opcional
}
```

<!-- Preciso revisar daqui para baixo -->

--------------------------------------------------------------------------------

## 2.0 Schema: `CharacterClass`

A definição de um schema robusto para a `CharacterClass` é um passo estratégico fundamental. Esta estrutura de dados não apenas dita as capacidades mecânicas e o estilo de jogo do personagem, mas também serve como base para o balanceamento sistêmico, a criação de conteúdo futuro (como as evoluções de Tier 2 e 3) e a implementação de mecânicas complexas como a progressão de atributos e a herança de habilidades. Uma estrutura bem definida aqui garante que cada classe tenha uma identidade clara, tanto narrativa quanto funcional.

### 2.1 Estrutura JSON para `CharacterClass`

_Nota: As seguintes estruturas de dados usam literais de string como_ `_"integer"_` _e_ `_"float"_` _para denotar o tipo de dado esperado para cada campo. Isso é para clareza descritiva; os arquivos JSON reais conterão valores numéricos ou de string brutos._

```json
{
  "classId": "string", // Identificador único e programático, ex: "conquistador_t1"
  "name": "string", // Nome exibido na interface do jogo, ex: "Conquistador"
  "origin": "string", // Referência à origem cultural: "Colonizador", "Indígena", "Ser Folclórico"
  "tier": "integer", // Nível de especialização da classe (1, 2, ou 3)
  "narrativeDescription": "string", // Texto de lore que contextualiza a classe no mundo
  "playstyle": "string", // Resumo do papel tático para a UI: "Tank", "DPS", "Suporte"
  "recommendedAttributes": ["string"], // Lista dos atributos principais, ex: ["Vigor", "ForcaBruta"]
  "baseHp": "integer", // Pontos de Vida base antes de modificadores de atributo
  "hpPerLevel": "integer", // Pontos de Vida ganhos a cada nível de personagem
  "proficiencyBonus": { // Define a "Proficiência de Vida" que recebe XP bônus
    "proficiencyId": "string", // ID da proficiência, ex: "mineracao"
    "category": "string" // Categoria da proficiência, ex: "Coleta", "Refinamento", "Produção"
  },
  "allowedEquipment": { // Restrições de equipamento que definem a identidade da classe
    "weapons": ["string"], // Tipos de armas permitidas, ex: ["Espada longa", "Maça"]
    "armors": ["string"] // Tipos de armaduras permitidas, ex: ["Pesadas", "Escudos"]
  },
  "startingSkills": [ // Lista de habilidades desbloqueadas no Tier 1
    {
      "skillId": "string",
      "name": "string",
      "type": "string", // "Ativa" ou "Passiva", crucial para a herança de habilidades
      "description": "string"
    }
  ]
}
```

### 2.2 Análise dos Campos da Estrutura

| Chave | Propósito | Estrutura |
| --- | --- | --- |
| `classId` | Identificador único e programático da classe, essencial para referências em outras estruturas de dados como habilidades, itens e missões. | `string` |
| `name` | Nome exibido na UI, usado no HUD do jogador, em logs de combate e em diálogos de NPCs. | `string` |
| `origin` | Vincula a classe a uma das três origens fundamentais (`Colonizador`, `Indígena`, `Ser Folclórico`), determinando acesso inicial e temas narrativos. | `string` |
| `tier` | Nível de especialização da classe, controlando a progressão e o desbloqueio de habilidades avançadas. | `integer` |
| `narrativeDescription` | Texto de lore que contextualiza o papel da classe no mundo, conforme detalhado no "Livro de Classes". | `string` |
| `playstyle` | Resumo tático para a UI, ajudando o jogador a entender o papel da classe, como "Tank" ou "DPS à distância". | `string` |
| `recommendedAttributes` | Lista dos atributos principais que otimizam o desempenho da classe e orientam a distribuição de pontos do jogador. | `array` de `string` |
| `baseHp` / `hpPerLevel` | Pontos de Vida iniciais e progressão por nível, usados no balanceamento entre classes mais resistentes e classes frágeis. | `integer` |
| `proficiencyBonus` | Proficiência de Vida que recebe XP bônus, incentivando alternância de classe para otimizar crafting e coleta. | `object` |
| `allowedEquipment` | Restrições de equipamento que definem a identidade e o balanceamento de cada classe. | `object` com `arrays` de `string` |
| `startingSkills` | Lista de habilidades iniciais desbloqueadas no Tier 1; a distinção entre `Ativa` e `Passiva` é crucial para a herança de habilidades. | `array` de `objects` |

As classes definem quem o jogador é, mas sua eficácia é diretamente influenciada pelos equipamentos que utilizam. A estrutura a seguir detalha como esses itens são definidos.

--------------------------------------------------------------------------------

## 3.0 Schema: `Item`

Uma estrutura de `Item` robusta é essencial para um RPG com foco em economia e crafting. O sistema 5x5 de Qualidade e Raridade precisa ser refletido diretamente no schema, pois impacta a mecânica de jogo de forma profunda. A qualidade de um item afeta diretamente a eficácia das habilidades de classe, enquanto a raridade pode desbloquear diálogos e eventos narrativos. Este schema garante que os itens sejam mais do que simples estatísticas, tornando-se elementos centrais no crafting, na economia dinâmica e no balanceamento geral.

### 3.1 Estrutura JSON para `Item`

```json
{
  "itemId": "string", // Identificador único e programático, ex: "espada_ferro_mal_forjada"
  "name": "string", // Nome do item exibido no jogo
  "type": "string", // Categoria geral para regras de sistema, ex: "Arma", "Armadura", "Consumível", "Ritual"
  "subtype": "string", // Categoria específica para filtros e organização, ex: "Espada Longa", "Armadura Leve", "Poção"
  "matriz": { // Objeto que implementa o sistema 5x5 de classificação
    "qualidade": "string", // "Muito Baixa", "Baixa", "Média", "Alta", "Excelente"
    "raridade": "string" // "Comum", "Incomum", "Raro", "Épico", "Lendário"
  },
  "baseUcValue": "integer", // Valor em Unidades Comerciais, antes de modificadores de economia regional
  "properties": [ // Array de efeitos mecânicos do item
    {
      "type": "string", // "Dano", "Defesa", "AttributeBonus", "EfeitoEspecial"
      "value": "string", // Valor do efeito, ex: "1d6", "+2", "Vigor"
      "description": "string" // Descrição do efeito para a UI
    }
  ],
  "durability": { // Rastreia o desgaste do item, conectando-se ao sistema de reparos
    "atual": "integer",
    "max": "integer"
  },
  "craftingRecipeId": "string" // ID da receita necessária para criar este item, integrando-o ao sistema de Proficiências
}
```

### 3.2 Análise dos Campos da Estrutura

| Chave | Propósito | Estrutura |
| --- | --- |--- |
| `itemId` | Identificador único e programático do item, usado em inventários, tabelas de loot e receitas. | `string` |
| `name` | Nome exibido na UI, nos logs de crafting e nos diálogos de NPCs. | `string` |
| `type` / `subtype` | Classifica o item para regras de sistema; `type` é a categoria geral e `subtype` é a categoria específica. | `string` |
| `matriz` | Objeto central que implementa o sistema 5x5; `qualidade` afeta bônus e durabilidade, enquanto `raridade` impacta valor e desbloqueios narrativos. | `object` |
| `baseUcValue` | Valor em Unidades Comerciais, usado como base para o sistema de economia regional descrito em `06_Economia_Itens_e_Crafting.md`. | `integer` |
| `properties` | Array de objetos que descreve os efeitos mecânicos do item, permitindo a criação de itens complexos e únicos. | `array` de `objects` |
| `durability` | Objeto que rastreia o desgaste do item e se conecta aos sistemas de reparo e manutenção. | `object` |
| `craftingRecipeId` | ID da receita necessária para criar o item, integrando-o ao sistema de Proficiências de Vida. | `string` |

Com as estruturas de classes e itens definidas, o foco se volta para as entidades que o jogador enfrentará, cujos desafios e recompensas são moldados por esses mesmos sistemas.

--------------------------------------------------------------------------------

## 4.0 Schema: `Inimigo`

A criação de um schema de `Inimigo` bem estruturado é vital não apenas para definir desafios de combate, mas também para alimentar o sistema de "Mundo Vivo" e o sistema de **Inimigos Evolutivos**. Esta estrutura permite que entidades hostis interajam com o ambiente, sigam rotinas programadas — como a facção NPC "Bandeirantes de Sangue" — evoluam ao derrotar jogadores, e forneçam recompensas coerentes através de tabelas de loot, integrando-as de forma orgânica à economia e ao ciclo de progressão do jogo.

### 4.1 Estrutura JSON para `Inimigo`

```json
{
  "enemyId": "string", // Identificador único, ex: "espirito_corrompido_floresta"
  "name": "string", // Nome exibido no jogo
  "type": "string", // Categoria para sistemas de resistências/fraquezas, ex: "Espiritual", "Humanoide", "Fera"
  "baseStats": {
    "pv": "integer",
    "defense": "integer",
    "iniciativaMod": "integer", // Bônus ou penalidade na rolagem de iniciativa
    "attributes": { // Atributos que governam suas ações e resistências
      "vigor": "integer",
      "bruteStrength": "integer",
      "cunning": "integer",
      "ancestralWisdom": "integer",
      "knowledge": "integer",
      "presence": "integer"
    }
  },
  "combatActions": [ // Lista de ações disponíveis para a IA
    {
      "actionId": "string",
      "name": "string",
      "type": "string", // "Ataque", "Habilidade", "Debuff", "Defesa"
      "usageChance": "float" // Probabilidade de escolher esta ação (0.0 a 1.0)
    }
  ],
  "lootTable": [ // Define as recompensas em itens
    {
      "itemId": "string",
      "quantity": "string", // Quantidade fixa ou em dado, ex: "1", "1d4"
      "dropChance": "float" // Probabilidade de dropar o item (0.0 a 1.0)
    }
  ],
  "xpReward": "integer", // Quantidade de XP concedida ao derrotar
  "evolution": { // Sistema de Inimigos Evolutivos (ADR-009)
    "killCount": "integer", // Players derrotados por esta instância
    "tier": "string", // "Normal", "Veterano", "Alfa", "Lenda"
    "originMapId": "string" // Bloco de origem para migração
  }
}
```

### 4.2 Análise dos Campos da Estrutura

| Chave | Propósito | Estrutura |
| --- | --- | --- |
| `enemyId` | Identificador único para uso em eventos de combate, missões e tabelas de spawn de região. | `string` |
| `name` | Nome do inimigo exibido na UI de combate e em logs. | `string` |
| `type` | Categoria do inimigo, crucial para sistemas de dano elemental, resistências e fraquezas. | `string` |
| `baseStats` | Agrupa os valores numéricos de combate, como PV, Defesa e Atributos, centralizando o balanceamento. | `object` |
| `baseStats.attributes` | Subobjeto com os atributos que governam as ações e resistências do inimigo. | `object` |
| `combatActions` | Lista de ações possíveis para a IA, permitindo comportamentos variados; `usageChance` pondera a frequência de cada ação. | `array` de `objects` |
| `lootTable` | Define as recompensas em itens com probabilidades individuais, alimentando o ciclo de exploração e crafting. | `array` de `objects` |
| `xpReward` | Quantidade de experiência concedida ao derrotar o inimigo. | `integer` |
| `evolution` | Objeto que rastreia o estado evolutivo da instância do inimigo, incluindo `killCount`, `tier` e `originMapId`. | `object` |

--------------------------------------------------------------------------------

## 6.0 Conclusão e Próximos Passos

Os schemas JSON apresentados neste documento — `CharacterClass`, `Item` e `Inimigo` — formam a base lógica e estrutural para as principais entidades de _Eras do Brasil_. Ao definir rigorosamente esses contratos de dados, garantimos a consistência, a integração entre sistemas e a facilidade de implementação no servidor Go. Conforme delineado na "Estratégia de Dados e Documentação" do projeto, o próximo passo no pipeline de desenvolvimento é popular esses schemas com os dados específicos de cada classe, item e inimigo planejados para o Ato 1 da campanha, transformando a arquitetura lógica em conteúdo jogável.
*
