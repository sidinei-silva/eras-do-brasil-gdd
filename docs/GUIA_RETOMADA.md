# 🧭 Guia de Retomada — Eras do Brasil

> **Objetivo:** Este documento é o seu ponto de partida para retomar o projeto. Ele organiza **tudo** que precisa ser feito, na **ordem exata** em que deve ser feito, com links para cada documento relevante.
>
> **Como usar:** Siga as Sprints na ordem. Cada Sprint tem tarefas numeradas. Faça a tarefa 1, depois a 2, etc. Não pule Sprints.
>
> **Última atualização:** 2026-02-17

---

## 📍 Onde Você Está Agora

Antes de qualquer tarefa, entenda o estado atual:

| Área | Status | O que existe |
|------|--------|-------------|
| **GDD (Design)** | ✅ 100% Completo | 9 capítulos de regras + Cap. 3B (Progressão), 12 classes Tier 1, Troca de Origem, 18 mini-campanhas |
| **Auditoria (PR #1)** | ✅ Mergeado | 10/12 correções aplicadas, 2 recomendações futuras ([ver auditoria](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)) |
| **Correções pré-backlog** | ✅ Concluídas | Slots de habilidades, Defesa Base, XP/Níveis, Troca de Origem, Pré-requisitos Multi-Class |
| **Decisões Técnicas** | ✅ Definidas | Projeto Unity único ([ADR-001](../vibe/decisions/ADR-001-organizacao-projeto-unity.md)), workflow de UI/UX ([ADR-002](../vibe/decisions/ADR-002-workflow-ui-ux.md)) |
| **Backlog GitHub** | ✅ Completo | 62 issues (#20-#81), 9 Epics, 7 Sprints (0-6+) no [Project #10](https://github.com/users/sidinei-silva/projects/10) |
| **POCs** | 🔲 0/38 | 38 POCs definidas com READMEs, nenhuma implementada |
| **Código** | 🔲 Não iniciado | Projeto Unity não criado |
| **UI/UX** | 📝 Planejado | Specs do GDD completas, wireframes previstos para Sprint 2, protótipos para Sprint 4 |
| **Livros Auxiliares** | ⚠️ 2/7 | Atlas do Eco + Livro de Itens existem. 5 livros referenciados no GDD ainda não existem |

### O Que Foi Corrigido na Auditoria (PR #1)

Estas correções **já foram aplicadas** e estão no código:

| # | Correção | Arquivo |
|---|----------|---------|
| 1 | Tabela de CD do Cap. 4 harmonizada com Cap. 2/9 | `gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md` |
| 2 | Referência "Capítulo 9" → "Capítulo 7" no Cap. 4 | `gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md` |
| 3 | "Inteligência" → "Conhecimento" no Ato 1 | `gdd/03_Enredo_e_Mundo/01_Ato_1_A_Primeira_Ruptura.md` |
| 4 | Seção de Esquecimento adicionada ao Cap. 8.3 | `gdd/01_Livro_de_Regras/08_Mundo_Vivo_e_NPCs.md` |

### O Que Ainda Precisa Ser Feito (Recomendações da Auditoria)

| # | Recomendação | Prioridade | Em qual Sprint | Status |
|---|-------------|------------|---------------|--------|
| 5 | Definir **slots de habilidades herdadas** (limite por Tier) | 🟡 Alta | Pré-backlog | ✅ Concluído |
| 6 | Definir **pré-requisitos multi-class** para Tiers 2/3 | 🟡 Média | Pré-backlog | ✅ Concluído |
| 7 | Criar **Reaction Abilities** por classe | 🔵 Baixa | [Sprint 6+](#-sprint-6--futuro) | 📝 Pendente |
| 8 | Detalhar **habilidades de Tier 2/3** | 🔵 Baixa | [Sprint 6+](#-sprint-6--futuro) | 📝 Pendente |
| 9 | Definir **mecânica de troca de Origem** | 🟡 Média | Pré-backlog | ✅ Concluído |
| 10 | Definir **sistema de XP e progressão de nível** | 🟡 Alta | Pré-backlog | ✅ Concluído |
| 11 | Reduzir **sobreposição Cap. 5 vs Cap. 8** | 🔵 Baixa | Pré-backlog | ✅ Concluído |
| 12 | Harmonizar **fórmula de Defesa Base** | 🔵 Baixa | Pré-backlog | ✅ Concluído |

---

## 🗓️ Visão Geral das Sprints

> Cada Sprint tem uma **estimativa** de tempo. Ajuste conforme sua disponibilidade.
> Backlog completo no [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10) com 62 issues.

| Sprint | Nome | Tipo | Estimativa | Pré-requisito |
|--------|------|------|-----------|---------------|
| **0** | [Correções de Lore](#-sprint-0--correções-de-lore-12-issues) | 📝 Documentação | 2–3 dias | Nenhum |
| **1** | [Livros & Narrativa](#-sprint-1--livros--narrativa-12-issues) | 📝 Documentação | 3–5 dias | Sprint 0 |
| **2** | [Fundação Unity](#-sprint-2--fundação-unity-13-issues) | 💻 Código | 3–5 dias | Sprint 0 |
| **3** | [Mundo & Combate](#-sprint-3--mundo--combate-6-issues) | 💻 Código | 5–7 dias | Sprint 2 |
| **4** | [Economia & UI](#-sprint-4--economia--ui-5-issues) | 💻 Código | 3–5 dias | Sprint 3 |
| **5** | [MVP "O Despertar"](#-sprint-5--mvp-o-despertar-6-issues) | 💻 Código | 5–7 dias | Sprint 4 |
| **6+** | [Futuro](#-sprint-6--futuro-8-issues) | 📝+💻 | Futuro | Sprint 5 |

```
Sprint 0 ──► Sprint 1 (pode paralelo com Sprint 2)
   │
   └──► Sprint 2 ──► Sprint 3 ──► Sprint 4 ──► Sprint 5 ──► Sprint 6+
```

---

## ✅ Correções Pré-Backlog (CONCLUÍDAS)

> Estas correções foram feitas ANTES do backlog de 62 issues ser criado no GitHub.
> Não têm número de Sprint — eram "Sprint 1-2 de retomada" antes da renumeração.

### ✅ Tarefa: Definir Slots de Habilidades Herdadas

**Resultado:** Tabela de slots por Tier adicionada em `gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md`

### ✅ Tarefa: Reduzir Sobreposição Cap. 5 vs Cap. 8

**Resultado:** Referências cruzadas adicionadas, Cap. 5 resumido com link para Cap. 8

### ✅ Tarefa: Harmonizar Defesa Base (Cap. 2 vs Cap. 4 vs Cap. 9)

**Resultado:** Fórmula unificada: `10 + Mod. Astúcia + Bônus de Armadura (se houver)` — agora consistente nos 3 capítulos

### ✅ Tarefa: Criar Sistema de XP e Progressão de Nível

**Resultado:** Novo capítulo criado em `gdd/01_Livro_de_Regras/03B_Progressao_e_Experiencia.md`

### ✅ Tarefa: Definir Mecânica de Troca de Origem (Espelho do Eco)

**Resultado:** Documentado em `gdd/02_Livro_de_Classes/04_Troca_de_Origem.md`

### ✅ Tarefa: Definir Pré-requisitos Multi-Class para Tiers 2/3

**Resultado:** Seção adicionada em `gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md`

---

## 📝 Sprint 0 — Correções de Lore (12 issues)

> **Objetivo:** Resolver os 11 furos de lore e inconsistências identificados na auditoria profunda do GDD.
>
> **Epic #20** — Correções de Lore e Enredo: Furos e Inconsistências do GDD
> **Estimativa:** 2–3 dias
> **Pré-requisito:** Nenhum — esta é a primeira Sprint do backlog.
> **Issues:** #21–#31 (ver detalhes no [GitHub Project #10](https://github.com/users/sidinei-silva/projects/10))

### Tarefas

Cada tarefa corresponde a uma issue no GitHub. Abra a issue para ver o contexto completo.

| # | Issue | Tarefa |
|---|-------|--------|
| 1 | #21 | Dom da Revivência: latente ou ativo no Ato 1? |
| 2 | #22 | Causa da Ruptura de 1497: definir origem canônica |
| 3 | #23 | Motivação da facção Folclórica no Ato 1 |
| 4 | #24 | Contradição de Nível para Tier 2/3 entre documentos |
| 5 | #25 | "Mana" referenciada sem sistema definido — Fadiga vs Mana |
| 6 | #26 | Definir "Dano Espiritual" e "Exaustão Espiritual" |
| 7 | #27 | Escala de Ticks — 500 Ticks = quanto tempo real/narrativo? |
| 8 | #28 | Guardião da Fenda — identidade, backstory e stats |
| 9 | #29 | Definir ou remover "Sanidade/Moral" como sistema |
| 10 | #30 | Definir ou remover conceito "Ecoera" |
| 11 | #31 | 12 mini-campanhas sem impacto sinérgico no Ato 1 |

---

## 📝 Sprint 1 — Livros & Narrativa (12 issues)

> **Objetivo:** Criar os livros auxiliares necessários para o MVP e o sistema de diálogos (o maior gap do projeto).
>
> **Epic #32** — Livros Auxiliares Prioritários
> **Epic #60** — Sistema de Diálogos e Narrativa
> **Estimativa:** 3–5 dias
> **Pré-requisito:** Sprint 0

### Quais Livros Criar Agora vs. Depois?

| Livro Referenciado | Necessário para MVP? | Quando Criar |
|---|:---:|---|
| **Livro de Habilidades** | ✅ Sim | **Sprint 3** — As POCs de combate precisam das habilidades formalizadas |
| **Livro de Itens e Equipamentos** | ✅ Sim | **Sprint 3** — O MVP precisa de itens definidos para inventário e loot |
| **Livro de Proficiências de Vida** | ✅ Sim | **Sprint 3** — Referenciado em 4 capítulos, a coleta depende disso |
| **Livro de Inimigos e Bestiário** | ⚠️ Parcial | **Sprint 3** — Criar versão mínima (apenas 2 inimigos do MVP) |
| **Livro de Magias e Rituais** | ❌ Não para MVP | **Sprint 8+** — O MVP usa apenas 1 classe (Guerreiro Tribal), sem magia |
| **Livro de Itens e Crafting (Receitas)** | ❌ Não para MVP | **Fase 2** — Crafting não está no MVP |

### Tarefa 3.1 — Criar Livro de Habilidades (Versão MVP)

**Por quê?** O Cap. 2 referencia um "Livro de Habilidades" mas ele não existe. As 12 classes Tier 1 já têm suas habilidades documentadas individualmente, mas não existe um índice consolidado. Para as POCs de combate (17, 18, 19), precisamos de um catálogo.

**O que fazer:**
1. Criar `gdd/05_Livros_Auxiliares/02_Livro_de_Habilidades.md`
2. Consolidar todas as habilidades ativas e passivas das 12 classes Tier 1
3. Estrutura: Tabela com Habilidade | Classe | Tipo (Ativa/Passiva) | Efeito | Recarga | Alcance
4. Incluir um schema JSON para a estrutura de dados de habilidades

**Fontes:**
- [`gdd/02_Livro_de_Classes/2_Origem_Indigena/Guerreiro_Tribal.md`](../gdd/02_Livro_de_Classes/2_Origem_Indigena/Guerreiro_Tribal.md) (e todos os outros 11 arquivos de classe)

---

### Tarefa 3.2 — Criar Livro de Itens e Equipamentos (Versão MVP)

**Por quê?** O GDD referencia itens em diversos capítulos, mas não existe um catálogo consolidado. Os `03_Dados_Iniciais_Ato1.md` tem 5 itens mockup, mas sem um livro de referência completo.

**O que fazer:**
1. Criar `gdd/05_Livros_Auxiliares/03_Livro_de_Itens_e_Equipamentos.md`
2. Incluir: Tabela de todos os itens do Ato 1 (armas, armaduras, itens utilitários, consumíveis)
3. Usar a Matriz 5×5 (Qualidade × Raridade) já definida no Cap. 6
4. Incluir os 5 itens mockup de `03_Dados_Iniciais_Ato1.md` + novos itens necessários para o MVP
5. Mínimo: 10–15 itens cobrindo armas (melee, ranged), armaduras (leve, média), consumíveis (poção, ração), recursos (madeira, pedra, erva)

**Fontes:**
- [`gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md`](../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- [`gdd/06_Dados_e_Assets/03_Dados_Iniciais_Ato1.md`](../gdd/06_Dados_e_Assets/03_Dados_Iniciais_Ato1.md)

---

### Tarefa 3.3 — Criar Livro de Proficiências de Vida

**Por quê?** Referenciado nos Capítulos 2, 3, 5 e 9 do Livro de Regras. Define as atividades do mundo (Caça, Pesca, Mineração, Herbalismo, etc.) que dão XP e recursos ao personagem. Sem ele, a POC 25 (Coleta e Proficiências) não tem base.

**O que fazer:**
1. Criar `gdd/05_Livros_Auxiliares/04_Livro_de_Proficiencias_de_Vida.md`
2. Definir:
   - Lista de proficiências (Coleta: Caça, Pesca, Mineração, Herbalismo, Exploração; Produção: Forja, Alfaiataria, Alquimia, Culinária, Refinamento)
   - Níveis de proficiência (1–5) com bônus de acerto e recursos extras por nível
   - XP necessário por nível de proficiência
   - Qual bloco/local é necessário para cada proficiência
   - Relação com classes (bônus de XP por classe ativa)

**Fontes:**
- [`gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md`](../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
- As 12 classes (cada uma tem "Proficiência com Bônus de XP" definida)

---

### Tarefa 3.4 — Criar Bestiário (Versão MVP)

**Por quê?** O MVP precisa de 2 inimigos (Lobo + Espírito Menor). O `03_Dados_Iniciais_Ato1.md` já tem 3 inimigos mockup, mas sem lore ou detalhamento comportamental.

**O que fazer:**
1. Criar `gdd/05_Livros_Auxiliares/05_Bestiario_Ato1.md`
2. Para cada inimigo: Nome, Descrição, Bloco onde aparece, Stats (PV, Defesa, Ataque, Dano), Habilidades, Tabela de Loot, Comportamento IA
3. MVP: Lobo Cinza, Espírito Menor, Bandeirante Capanga
4. Incluir 2–3 inimigos extras para dar variedade ao Ato 1

**Fontes:**
- [`gdd/06_Dados_e_Assets/03_Dados_Iniciais_Ato1.md`](../gdd/06_Dados_e_Assets/03_Dados_Iniciais_Ato1.md)
- [`gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md`](../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md) (para saber quais inimigos aparecem em cada bloco)

---

### ✅ Checklist da Sprint 1

**Livros Auxiliares (Epic #32):**
- [ ] 1.1 — Criar Livro de Habilidades — consolidado das 12 classes (#33)
- [ ] 1.2 — Criar Livro de Itens e Equipamentos — 10-15 itens MVP (#34)
- [ ] 1.3 — Criar Livro de Proficiências de Vida (#35)
- [ ] 1.4 — Criar Bestiário Ato 1 — 5+ inimigos (#36)
- [ ] Atualizar `gdd/README.md` com links para os novos livros

**Sistema de Diálogos (Epic #60):**
- [ ] 1.5 — Criar Livro de Diálogos e Narrativa — Guia de Estilo (#61)
- [ ] 1.6 — Definir Schema JSON para DialogueTree (#62)
- [ ] 1.7 — Definir Formato de Texto Narrativo para Tela de Cena (#63)
- [ ] 1.8 — Criar Diálogos JSON dos NPCs da Vila de São Tomé (#64)
- [ ] 1.9 — Escrever Diálogos da mini-campanha "O Caçador que Não Voltou" (#65)
- [ ] 1.10 — Definir Integração Quest ↔ Dialogue (#66)

---

## 💻 Sprint 2 — Fundação Unity (13 issues)

> **Objetivo:** Criar o projeto Unity e implementar as POCs de lógica pura (C# sem gráficos), schemas JSON e dados. São as POCs mais fundamentais — sem elas, nada mais funciona.
>
> **Epic #37** — Setup Unity + POCs Fundação (Módulo A)
> **Epic #67** — Schemas JSON e Dados Estruturais Faltantes
> **Estimativa:** 3–5 dias
> **Pré-requisito:** Sprint 0
>
> **NOTA:** A Sprint 1 (Livros & Narrativa) pode ser feita em paralelo com a Sprint 2, já que uma é documentação e a outra é código.

### Tarefa 2.1 — Setup do Projeto Unity

> ⚠️ **Decisão:** Um único projeto Unity para todas as POCs e o jogo final. POCs são separadas por **cenas**, não por projetos. Scripts são escritos direto na estrutura de produção. Detalhes em [ADR-001](../vibe/decisions/ADR-001-organizacao-projeto-unity.md) e [Organização do Projeto Unity](tech/organizacao-projeto-unity.md).

**O que fazer:**
1. Instalar Unity Hub + Unity LTS (versão mais recente estável)
2. Criar projeto 2D vazio chamado `ErasDoBrasil`
3. Configurar estrutura de pastas (projeto único — POCs e jogo):
   ```
   Assets/
   ├── Scripts/
   │   ├── Core/              (Motor de regras, D20, atributos)
   │   ├── Data/              (ScriptableObjects, loaders)
   │   ├── Combat/            (Combate, status, habilidades)
   │   ├── World/             (Ticks, navegação, eventos)
   │   ├── Economy/           (Inventário, crafting, comércio)
   │   ├── NPC/               (IA, rotinas, fofoca)
   │   ├── UI/                (HUD, menus, cenas)
   │   ├── Persistence/       (Save/Load)
   │   ├── Network/           (P2P, sincronia)
   │   └── Narrative/         (Quests, diálogos)
   ├── Resources/
   │   ├── ScriptableObjects/
   │   └── JSON/
   ├── Scenes/
   │   ├── POC/               (1 cena por POC — sandbox de teste)
   │   ├── MVP/               (Cena integrada do MVP)
   │   └── Game/              (Cenas do jogo final — fases futuras)
   ├── Tests/
   │   ├── EditMode/          (Testes unitários)
   │   └── PlayMode/          (Testes com cena)
   ├── Art/
   │   ├── Placeholder/       (Assets temporários para POCs)
   │   └── Final/             (Pixel art final — Fase 3+)
   └── Prefabs/
   ```
4. Configurar `.gitignore` para Unity
5. Criar cena de teste vazia (`Scenes/POC/POC_Sandbox.unity`)
6. Configurar namespaces C# por módulo (`ErasDoBrasil.Core`, `ErasDoBrasil.Combat`, etc.)

**Referências:**
- [`pocs/README.md`](../pocs/README.md)
- [Organização do Projeto Unity](tech/organizacao-projeto-unity.md)
- [ADR-001](../vibe/decisions/ADR-001-organizacao-projeto-unity.md)

---

### Tarefa 2.2 — POC 01: Fundação de Dados

**O que fazer:** Implementar o pipeline ScriptableObject → JSON conforme os schemas definidos.

**Critério de aceite:** Console exibe "Carregados X Itens, Y Inimigos, Z Classes"

**Detalhes:** [`pocs/01-fundacao-dados/README.md`](../pocs/01-fundacao-dados/README.md)

**Regra do GDD validada:** [`gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md`](../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)

---

### Tarefa 2.3 — POC 02: Motor D20

**O que fazer:** Implementar o motor de rolagem D20 com modificadores, vantagem/desvantagem, críticos.

**Critério de aceite:** CLI simula 1000 testes e mostra distribuição de acertos/críticos.

**Detalhes:** [`pocs/02-motor-d20/README.md`](../pocs/02-motor-d20/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md`](../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)

---

### Tarefa 2.4 — POC 03: Atributos e Criação

**O que fazer:** Implementar o sistema de point-buy (27 pontos) e cálculo de modificadores.

**Critério de aceite:** Personagem criado com point-buy, modificadores calculados corretamente.

**Detalhes:** [`pocs/03-atributos-criacao/README.md`](../pocs/03-atributos-criacao/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md`](../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)

---

### Tarefa 2.5 — POC 06: Matriz de Itens 5×5

**O que fazer:** Implementar o sistema de Qualidade × Raridade para itens.

**Critério de aceite:** Gerar 50 itens aleatórios, validar bônus e durabilidade.

**Detalhes:** [`pocs/06-matriz-itens/README.md`](../pocs/06-matriz-itens/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md`](../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

---

### Tarefa 2.6 — Wireframes de Baixa Fidelidade (UI/UX)

> 🎨 **Por quê?** O GDD já tem specs detalhadas de UI ([UI Fase 1](../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)), mas não existia uma etapa de design visual intermediária antes de implementar as POCs de UI. Wireframes reduzem retrabalho. Detalhes em [ADR-002](../vibe/decisions/ADR-002-workflow-ui-ux.md).

**O que fazer:**
1. Criar wireframes de **baixa fidelidade** para as 4 telas principais do MVP:
   - HUD Principal (barra superior)
   - Mapa de Nós (pergaminho com nós clicáveis)
   - Tela de Cena (split: ilustração + texto/ações)
   - Tela de Combate Estático (sprites + hotbar + log)
2. Usar [Excalidraw](https://excalidraw.com/) ou ferramenta similar
3. Salvar em `docs/tech/wireframes/`
4. Basear nos layouts de [`gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md`](../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

**Referências:**
- [Workflow de UI/UX](tech/workflow-ui-ux.md)
- [ADR-002](../vibe/decisions/ADR-002-workflow-ui-ux.md)

---

### ✅ Checklist da Sprint 2

- [ ] 2.1 — Setup do projeto Unity (projeto único, estrutura de pastas, .gitignore, namespaces) (#38)
- [ ] 2.2 — POC 01: Fundação de Dados (#39)
- [ ] 2.3 — POC 02: Motor D20 (#40)
- [ ] 2.4 — POC 03: Atributos e Criação (#41)
- [ ] 2.5 — POC 06: Matriz de Itens 5×5 (#42)
- [ ] 2.6 — Wireframes de baixa fidelidade — HUD, Mapa, Cena, Combate (#43)
- [ ] POC 04: Tier Scaling — Progressão por Tiers e Curvas de XP (#80)
- [ ] POC 05: Herança de Habilidades — Dom da Revivência e Troca de Classes (#81)
- [ ] Schemas JSON: Quest, NPC, Faction, Gossip, Skill, Proficiency, Campaign (#68)
- [ ] NPC Agenda Data — Rotinas dos NPCs da Vila de São Tomé (#69)
- [ ] Expandir Dados Iniciais Ato 1 — Enemy Stats, Itens e Localizações (#70)

---

## 💻 Sprint 3 — Mundo & Combate (6 issues)

> **Objetivo:** Implementar o motor de tempo (Ticks) e o sistema de combate. Estes são os dois sistemas mais importantes após a fundação.
>
> **Epic #44** — POCs Mundo e Combate (Módulos B + D)
> **Estimativa:** 5–7 dias
> **Pré-requisito:** Sprint 2 (fundação de dados e Motor D20)

### Tarefa 3.1 — POC 07: Motor de Ticks

**O que fazer:** Implementar o relógio universal de Ticks, ciclo dia/noite, regeneração de PV.

**Critério de aceite:** Botão "Esperar" avança Tick, relógio atualiza, PV regenera.

**Detalhes:** [`pocs/07-motor-ticks/README.md`](../pocs/07-motor-ticks/README.md)

---

### Tarefa 3.2 — POC 08: Navegação por Blocos

**O que fazer:** Implementar o grafo de mundo com custo de Ticks por terreno.

**Critério de aceite:** Navegar Vila→Floresta→Ruínas gastando Ticks corretos.

**Detalhes:** [`pocs/08-navegacao-blocos/README.md`](../pocs/08-navegacao-blocos/README.md)

**Regra do GDD validada:** [`gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md`](../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)

---

### Tarefa 3.3 — POC 17: Combate Estático (Fase 1)

**O que fazer:** Implementar o loop completo de combate: Iniciativa → Turnos → D20 vs Defesa → Dano → Loot.

**Critério de aceite:** Combate completo com log mostrando toda a matemática.

**Detalhes:** [`pocs/17-combate-estatico/README.md`](../pocs/17-combate-estatico/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md`](../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)

---

### Tarefa 3.4 — POC 18: Status e Condições

**O que fazer:** Implementar condições de status (Envenenado, Atordoado, Queimando).

**Critério de aceite:** Efeitos processados corretamente por turno.

**Detalhes:** [`pocs/18-status-condicoes/README.md`](../pocs/18-status-condicoes/README.md)

---

### Tarefa 3.5 — POC 19: Habilidades em Combate

**O que fazer:** Implementar habilidades ativas, custo de recurso, efeitos de área.

**Critério de aceite:** Usar habilidades ativas com custo, efeito e fadiga.

**Detalhes:** [`pocs/19-habilidades-combate/README.md`](../pocs/19-habilidades-combate/README.md)

---

### ✅ Checklist da Sprint 3

- [ ] 3.1 — POC 07: Motor de Ticks (#45)
- [ ] 3.2 — POC 08: Navegação por Blocos (#46)
- [ ] 3.3 — POC 17: Combate Estático (#47)
- [ ] 3.4 — POC 18: Status e Condições (#48)
- [ ] 3.5 — POC 19: Habilidades em Combate (#49)

---

## 💻 Sprint 4 — Economia & UI (5 issues)

> **Objetivo:** Implementar inventário, HUD e save/load. Estes são os últimos sistemas necessários antes de integrar o MVP.
>
> **Epic #50** — POCs Economia, UI e Persistência (Módulos E + F + G)
> **Estimativa:** 3–5 dias
> **Pré-requisito:** Sprint 3 (combate e mundo)

### Tarefa 4.1 — POC 24: Inventário

**O que fazer:** UI de inventário com equipar/desequipar, peso/capacidade.

**Detalhes:** [`pocs/24-inventario/README.md`](../pocs/24-inventario/README.md)

---

### Tarefa 4.2 — POC 28: HUD Principal

**O que fazer:** Barra superior com retrato, PV/XP, recursos, moeda, relógio de Ticks.

**Detalhes:** [`pocs/28-hud-principal/README.md`](../pocs/28-hud-principal/README.md)

**Referência visual:** [`gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md`](../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

---

### Tarefa 4.3 — POC 33: Save/Load (JSON)

**O que fazer:** Salvar e carregar estado completo do personagem em JSON.

**Detalhes:** [`pocs/33-save-load/README.md`](../pocs/33-save-load/README.md)

---

### Tarefa 4.4 — Protótipo de UI e Validação de Fluxo (UI/UX)

> 🎨 **Por quê?** Antes de implementar as POCs de UI (28, 29, 30, 31), validar o fluxo visual com um protótipo navegável. Isso evita retrabalho na implementação Unity.

**O que fazer:**
1. Refinar os wireframes da Sprint 4 com aprendizados das POCs de lógica
2. Criar protótipo navegável (Unity UI Toolkit ou Figma):
   - Fluxo: Menu → Criação → Mapa → Cena → Combate → Inventário → Save
3. Validar: legibilidade, hierarquia visual, feedback de ações
4. Atualizar wireframes em `docs/tech/wireframes/`

**Referências:**
- [Workflow de UI/UX](tech/workflow-ui-ux.md)
- [Wireframes da Sprint 2](tech/wireframes/)
- [UI Fase 1](../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

---

### ✅ Checklist da Sprint 4

- [ ] 4.1 — POC 24: Inventário (#51)
- [ ] 4.2 — POC 28: HUD Principal (#53)
- [ ] 4.3 — POC 33: Save/Load (#54)
- [ ] 4.4 — Protótipo de UI e validação de fluxo (#52)

---

## 💻 Sprint 5 — MVP "O Despertar" (6 issues)

> **Objetivo:** Integrar todas as POCs anteriores em um loop jogável de 15–30 minutos.
>
> **Epic #55** — MVP "O Despertar" (Integração + Playtest)
> **Estimativa:** 5–7 dias
> **Pré-requisito:** Sprints 2, 3 e 4 (todas as POCs core)

### O Core Loop do MVP

```
Criar Personagem (Origem Indígena → Guerreiro Tribal)
    → Explorar Bloco (Vila de São Tomé → Floresta do Norte → Ruínas Queimadas)
    → Encontrar Combate (Lobo / Espírito Menor)
    → Rolar D20, usar habilidades, receber/causar dano
    → Coletar Loot/XP
    → Voltar à Vila (descansar, equipar)
    → Salvar jogo
    → Repetir
```

### Tarefa 5.1 — Integrar POCs no Projeto Principal

**O que fazer:**
1. Criar cena `MVP_Main.unity`
2. Conectar: Criação → Navegação → Combate → Inventário → Save/Load
3. Fluxo linear: Menu → Criação → Vila → Mapa → Bloco → Combate → Vitória → Loot → Vila

---

### Tarefa 5.2 — Primeiro Playtest

**O que fazer:**
1. Jogar o loop completo pelo menos 3 vezes
2. Anotar bugs, desequilíbrios, problemas de flow
3. Ajustar números (PV, dano, CD, loot)
4. **Validação de UI/UX:** Avaliar se o HUD é compreensível, se a navegação no mapa é intuitiva, se o combate tem feedback visual suficiente, se os botões de ação são claros
5. Documentar problemas de usabilidade para iteração pós-MVP

---

### Tarefa 5.3 — Build Funcional

**O que fazer:**
1. Criar build exportável (Windows/Mac)
2. Testar fora do editor Unity
3. Documentar versão e changelog

---

### ✅ Checklist da Sprint 5

- [ ] 5.1 — Integrar POCs no projeto principal (#56)
- [ ] Projetar Tutorial / Onboarding Flow (#72)
- [ ] Projetar Main Menu + Pause Menu + Settings (#73)
- [ ] 5.2 — Primeiro playtest — 3+ runs (#57)
- [ ] 5.3 — Build funcional exportável (#58)

---

## 📝💻 Sprint 6+ — Futuro (8 issues)

> **Objetivo:** Game Feel, expansão de classes, e preparação para Ato 2.
>
> **Epic #71** — Game Feel: Infraestrutura de Jogo
> **Meta-Issue #59** — Mapeamento Futuro: Tudo Além do MVP
> **Estimativa:** Futuro (após MVP validado)
> **Pré-requisito:** Sprint 5 (MVP funcionando)
>
> ⚠️ **Esta Sprint só deve ser iniciada após o MVP estar jogável e validado.**

### Por que NÃO fazer o Tier 2 agora?

1. **O MVP usa apenas 1 classe Tier 1** (Guerreiro Tribal). Tier 2 não é necessário.
2. **O Ato 1 foi projetado para Tier 1.** Tier 2 é desbloqueado no final do Ato 1 como recompensa.
3. **Balancear Tier 2 sem MVP funcionando é chutar no escuro.** Primeiro valide os números do Tier 1, depois ajuste Tier 2.
4. **O documento de Tiers já existe** (`01_Tiers_e_Evolucao.md`). A estrutura está lá, só falta detalhar as habilidades.

### O que entra nesta Sprint (quando chegar a hora)

**Game Feel (Epic #71):**
- [ ] Sistema de Áudio — Música, SFX e Ambientação (#74)
- [ ] Mecânica de Morte do Jogador — Game Over / Respawn (#75)
- [ ] Loading Screens com Dicas de Lore (#76)
- [ ] Estratégia de Localização i18n (#77)
- [ ] Accessibility Features — Fonte, Daltonismo, Controles (#78)
- [ ] Expandir Habilidades Tier 1 + Reaction Abilities + Scaling (#79)

**Tier 2 e Ato 2 (NÃO fazer agora):**
- [ ] Detalhar habilidades de Tier 2 para as 12 classes
- [ ] Criar Reaction Abilities (1 por classe)
- [ ] Criar Livro de Magias e Rituais
- [ ] Criar Livro de Receitas de Crafting
- [ ] Esboço do Ato 2

**Referências:**
- [Auditoria §2.2C — Reaction Abilities](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)
- [Auditoria §2.2D — Habilidades Tier 2/3](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

## 🔍 Sobre as POCs — O Que Fazer vs. O Que Adiar

> Resumo rápido de quais POCs fazer agora e quais adiar.

### ✅ POCs Obrigatórias para o MVP (Sprints 2–4)

| # | POC | Sprint |
|---|-----|--------|
| 01 | Fundação de Dados | Sprint 2 |
| 02 | Motor D20 | Sprint 2 |
| 03 | Atributos e Criação | Sprint 2 |
| 04 | Tier Scaling | Sprint 2 |
| 05 | Herança de Habilidades | Sprint 2 |
| 06 | Matriz de Itens 5×5 | Sprint 2 |
| 07 | Motor de Ticks | Sprint 3 |
| 08 | Navegação por Blocos | Sprint 3 |
| 17 | Combate Estático | Sprint 3 |
| 18 | Status e Condições | Sprint 3 |
| 19 | Habilidades em Combate | Sprint 3 |
| 24 | Inventário | Sprint 4 |
| 28 | HUD Principal | Sprint 4 |
| 33 | Save/Load | Sprint 4 |

### ⏳ POCs para a Fase 2 (Pré-Alpha) — Após MVP

| # | POC | Por quê adiar? |
|---|-----|----------------|
| 09 | Eventos de Mundo | MVP funciona sem eventos aleatórios |
| 10 | Relógio da Ruptura | Ato 1 pode ser testado sem countdown |
| 12 | Rotinas de NPCs | NPCs estáticos no MVP |
| 16 | Diálogos Ramificados | MVP usa diálogos simples |
| 20 | Loot e Recompensas | MVP usa loot fixo |
| 25 | Coleta e Proficiências | MVP sem crafting |
| 32 | Criação de Personagem (UI) | MVP pode usar criação simples |

### 🔮 POCs para fases posteriores

| # | POC | Fase |
|---|-----|------|
| 11 | Clima e Maré | Fase 2+ |
| 13–15 | Utility AI, Fofoca, Facções | Fase 3 (Alpha) |
| 21–23 | Grid Tático, Pathfinding, Combate Espacial | Fase 4 (Beta) |
| 26–27 | Crafting, Comércio | Fase 2+ |
| 29–31 | Mapa de Nós, Tela de Cena, Tela de Combate (visual) | Fase 3 |
| 34–36 | P2P, Sincronia, Trade | Fase 5 (Release) |
| 37–38 | Quests, Mini-Campanha | Fase 3+ |

---

## 📚 Mapa de Navegação do Projeto

> Para não se perder, use este mapa mental de onde encontrar cada coisa:

```
eras-do-brasil/
├── 📄 README.md                    ← Visão geral do projeto
├── 📄 ROADMAP.md                   ← Status geral e fases
├── 📄 docs/GUIA_RETOMADA.md        ← VOCÊ ESTÁ AQUI 🔴
│
├── 📂 gdd/                         ← Game Design Document (a Bíblia)
│   ├── 📄 README.md                ← Índice do GDD com links
│   ├── 📄 Game_Pitch.md            ← Apresentação do jogo
│   ├── 📄 Project Plan.md          ← Plano estratégico
│   │
│   ├── 📂 01_Livro_de_Regras/      ← 9 capítulos de mecânicas
│   ├── 📂 02_Livro_de_Classes/     ← 12 classes Tier 1 + sistema
│   ├── 📂 03_Enredo_e_Mundo/       ← Ato 1 + 18 mini-campanhas
│   ├── 📂 04_Design_Visual/        ← Pixel art, UI, HUD (specs de referência)
│   ├── 📂 05_Livros_Auxiliares/    ← Atlas do Eco + futuros livros
│   ├── 📂 06_Dados_e_Assets/       ← Schemas JSON, dados mockup
│   └── 📂 99_Meta_e_Backlog/       ← Estratégia, Roadmap, Auditoria
│
├── 📂 docs/                        ← Documentação oficial
│   └── 📂 tech/                    ← Documentação técnica
│       ├── 📄 organizacao-projeto-unity.md  ← Estrutura do projeto Unity
│       ├── 📄 workflow-ui-ux.md             ← Processo de UI/UX
│       └── 📂 wireframes/                   ← Wireframes das telas (Sprint 4)
│
├── 📂 pocs/                        ← 38 POCs (protótipos Unity/C#)
│   └── 📄 README.md                ← Índice mestre de POCs
│
├── 📂 vibe/                        ← Contexto evolutivo do projeto
│   ├── 📄 backlog.md               ← Tarefas priorizadas
│   ├── 📄 project-status.md        ← Snapshot do estado atual
│   ├── 📂 decisions/               ← ADRs (decisões de arquitetura)
│   │   ├── 📄 ADR-001-organizacao-projeto-unity.md
│   │   └── 📄 ADR-002-workflow-ui-ux.md
│   └── 📂 sessions/               ← Logs de sessão
│
└── 📂 ia-conversations/            ← Conversas com IAs (Gemini)
    └── 📂 gemini/                  ← Conversas 7 e 8
```

---

## 🎯 Resumo Executivo

**O que fazer AGORA:**
1. Sprint 0 — Correções de Lore (12 issues de documentação)
2. Sprint 1 — Livros Auxiliares + Sistema de Diálogos (paralelo com Sprint 2)
3. Sprint 2 — Setup Unity + POCs Fundação

**O que fazer DEPOIS:**
4. Sprint 3 — POCs Mundo e Combate
5. Sprint 4 — POCs Economia, UI e Persistência
6. Sprint 5 — MVP "O Despertar"

**O que NÃO fazer agora:**
- Tier 2/3 das classes (é do Ato 2, precisa de MVP primeiro)
- Livro de Magias (MVP não usa classes mágicas)
- Grid tático / Pathfinding (é da Fase 4 — Beta)
- Multiplayer P2P (é da Fase 5 — Release)

---

> **Última atualização:** 2026-02-17
