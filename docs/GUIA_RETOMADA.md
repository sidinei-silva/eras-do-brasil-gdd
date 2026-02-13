# 🧭 Guia de Retomada — Eras do Brasil

> **Objetivo:** Este documento é o seu ponto de partida para retomar o projeto. Ele organiza **tudo** que precisa ser feito, na **ordem exata** em que deve ser feito, com links para cada documento relevante.
>
> **Como usar:** Siga as Sprints na ordem. Cada Sprint tem tarefas numeradas. Faça a tarefa 1, depois a 2, etc. Não pule Sprints.
>
> **Última atualização:** 2026-02-13

---

## 📍 Onde Você Está Agora

Antes de qualquer tarefa, entenda o estado atual:

| Área | Status | O que existe |
|------|--------|-------------|
| **GDD (Design)** | ✅ 100% Completo | 9 capítulos de regras + Cap. 3B (Progressão), 12 classes Tier 1, Troca de Origem, 18 mini-campanhas |
| **Auditoria (PR #1)** | ✅ Mergeado | 10/12 correções aplicadas, 2 recomendações futuras ([ver auditoria](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)) |
| **Sprint 1** | ✅ Concluída | Slots de habilidades, Defesa Base, referências cruzadas |
| **Sprint 2** | ✅ Concluída | Sistema de XP/Níveis, Troca de Origem, Pré-requisitos Multi-Class |
| **Decisões Técnicas** | ✅ Definidas | Projeto Unity único ([ADR-001](../vibe/decisions/ADR-001-organizacao-projeto-unity.md)), workflow de UI/UX ([ADR-002](../vibe/decisions/ADR-002-workflow-ui-ux.md)) |
| **POCs** | 🔲 0/38 | 38 POCs definidas com READMEs, nenhuma implementada |
| **Código** | 🔲 Não iniciado | Projeto Unity não criado |
| **UI/UX** | 📝 Planejado | Specs do GDD completas, wireframes previstos para Sprint 4, protótipos para Sprint 6 |
| **Livros Auxiliares** | ⚠️ 1/7 | Apenas Atlas do Eco existe. 6 livros referenciados no GDD ainda não existem |

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
| 5 | Definir **slots de habilidades herdadas** (limite por Tier) | 🟡 Alta | Sprint 1 | ✅ Concluído |
| 6 | Definir **pré-requisitos multi-class** para Tiers 2/3 | 🟡 Média | Sprint 2 | ✅ Concluído |
| 7 | Criar **Reaction Abilities** por classe | 🔵 Baixa | [Sprint 8](#-sprint-8--tier-2-das-classes-ato-2) | 📝 Pendente |
| 8 | Detalhar **habilidades de Tier 2/3** | 🔵 Baixa | [Sprint 8](#-sprint-8--tier-2-das-classes-ato-2) | 📝 Pendente |
| 9 | Definir **mecânica de troca de Origem** | 🟡 Média | Sprint 2 | ✅ Concluído |
| 10 | Definir **sistema de XP e progressão de nível** | 🟡 Alta | Sprint 2 | ✅ Concluído |
| 11 | Reduzir **sobreposição Cap. 5 vs Cap. 8** | 🔵 Baixa | Sprint 1 | ✅ Concluído |
| 12 | Harmonizar **fórmula de Defesa Base** | 🔵 Baixa | Sprint 1 | ✅ Concluído |

---

## 🗓️ Visão Geral das Sprints

> Cada Sprint tem uma **estimativa** de tempo. Ajuste conforme sua disponibilidade.

| Sprint | Nome | Tipo | Estimativa | Pré-requisito |
|--------|------|------|-----------|---------------|
| **1** | [Correções do GDD](#-sprint-1--correções-do-gdd-documentação-pura) | 📝 Documentação | 1–2 dias | Nenhum |
| **2** | [Sistema de Progressão (XP e Nível)](#-sprint-2--sistema-de-progressão-xp-e-nível) | 📝 Documentação | 1–2 dias | Sprint 1 |
| **3** | [Livros Auxiliares Prioritários](#-sprint-3--livros-auxiliares-prioritários) | 📝 Documentação | 3–5 dias | Sprint 2 |
| **4** | [Setup Unity + POCs Fundação](#-sprint-4--setup-unity--pocs-fundação-módulo-a) | 💻 Código | 3–5 dias | Sprint 2 |
| **5** | [POCs Mundo e Combate](#-sprint-5--pocs-mundo-e-combate-módulos-b--d) | 💻 Código | 5–7 dias | Sprint 4 |
| **6** | [POCs Economia e Persistência](#-sprint-6--pocs-economia-e-persistência-módulos-e--g) | 💻 Código | 3–5 dias | Sprint 5 |
| **7** | [MVP "O Despertar"](#-sprint-7--mvp-o-despertar-integração) | 💻 Código | 5–7 dias | Sprint 6 |
| **8** | [Tier 2 das Classes (Ato 2)](#-sprint-8--tier-2-das-classes-ato-2) | 📝+💻 | Futuro | Sprint 7 |

```
Sprint 1 ──► Sprint 2 ──► Sprint 3 (pode paralelo com 4)
                  │
                  └──► Sprint 4 ──► Sprint 5 ──► Sprint 6 ──► Sprint 7 ──► Sprint 8
```

---

## 📝 Sprint 1 — Correções do GDD (Documentação Pura)

> **Objetivo:** Resolver todas as recomendações pendentes da auditoria que são de documentação pura (sem código). Isso deixa o GDD 100% consistente antes de começar a codar.
>
> **Estimativa:** 1–2 dias
> **Pré-requisito:** Nenhum — esta é a primeira coisa a fazer.

### Tarefa 1.1 — Definir Slots de Habilidades Herdadas

**Por quê?** Sem um limite de slots, um personagem que desbloqueia 4 classes pode acumular 4+ habilidades ativas herdadas, quebrando o balanceamento. No FFT, existe um limite claro.

**O que fazer:**
1. Abrir `gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md`
2. Na seção "🔮 Expansões Futuras", transformar a sugestão de "Slots de habilidades ativas herdáveis" em **regra oficial**
3. Adicionar uma nova seção **"📊 Limite de Habilidades Herdadas"** com a tabela:

| Tier da Classe Ativa | Slots de Habilidades Ativas Herdáveis |
|---|---|
| Tier 1 | 1 habilidade ativa de outra classe |
| Tier 2 | 2 habilidades ativas de outras classes |
| Tier 3 | 3 habilidades ativas de outras classes |

4. Adicionar um exemplo prático mostrando como funciona
5. Atualizar a seção "Regras Complementares" para referenciar o novo limite

**Arquivo:** [`gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md`](../gdd/02_Livro_de_Classes/03_Heranca_de_Habilidades.md)

**Referência:** [Auditoria §2.2A](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

### Tarefa 1.2 — Reduzir Sobreposição Cap. 5 vs Cap. 8

**Por quê?** O Cap. 5 (Exploração e Mundo) e o Cap. 8 (Mundo Vivo e NPCs) ambos falam sobre NPCs, Ticks e IA. Não são contraditórios, mas são redundantes. Isso confunde quem lê.

**O que fazer:**
1. Abrir `gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md`
2. Nas seções 5.3 e 5.4 (sobre NPCs), **reduzir para um resumo breve** e adicionar um link explícito:
   > *"Para regras completas sobre IA de NPCs, necessidades, rotinas e sistema de fofoca, consulte o [Capítulo 8 — Mundo Vivo e NPCs](08_Mundo_Vivo_e_NPCs.md)."*
3. Manter no Cap. 5 apenas o que é relevante para o **jogador durante exploração** (como interagir com NPCs, o que esperar)
4. Manter no Cap. 8 a **referência técnica completa** (como a IA funciona)

**Arquivos:**
- [`gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md`](../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)

**Referência:** [Auditoria §5.1](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

### Tarefa 1.3 — Harmonizar Defesa Base (Cap. 2 vs Cap. 9)

**Por quê?** O Cap. 2 define Defesa Base como `10 + Mod. Astúcia`. O Cap. 9 define como `10 + Mod. Astúcia + Bônus de Armadura`. A versão do Cap. 9 é a completa.

**O que fazer:**
1. Abrir `gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md`
2. Na seção 2.8, atualizar a fórmula para incluir "Bônus de Armadura (se houver)":
   > **Defesa Base:** `10 + Modificador de Astúcia + Bônus de Armadura (se houver)`

**Arquivo:** [`gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md`](../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)

**Referência:** [Auditoria §3.1C](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

### ✅ Checklist da Sprint 1 (CONCLUÍDA)

- [x] 1.1 — Definir slots de habilidades herdadas em `03_Heranca_de_Habilidades.md`
- [x] 1.2 — Reduzir sobreposição Cap. 5 vs Cap. 8 (referências cruzadas)
- [x] 1.3 — Harmonizar fórmula de Defesa Base (Cap. 2 = Cap. 9)
- [x] Atualizar `gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md` marcando itens 5, 11 e 12 como ✅

---

## 📝 Sprint 2 — Sistema de Progressão (XP e Nível)

> **Objetivo:** Resolver as duas lacunas mais importantes do GDD: o sistema de XP/nível (que é mencionado mas nunca definido) e a mecânica de troca de Origem.
>
> **Estimativa:** 1–2 dias
> **Pré-requisito:** Sprint 1

### Tarefa 2.1 — Criar Sistema de XP e Progressão de Nível

**Por quê?** O GDD menciona "PV por Nível" em todas as 12 classes e "XP de proficiência", mas **nenhum documento define** como funciona a progressão de nível. Sem isso, não dá para implementar as POCs de Tier Scaling (POC 04) nem o MVP.

**O que fazer:**
1. Criar uma nova seção no Cap. 3 (Criação de Personagem) **ou** criar uma seção dedicada `gdd/01_Livro_de_Regras/03B_Progressao_e_Experiencia.md`
2. Definir:
   - **Fontes de XP:** Combate (derrotar inimigos), Quests (completar missões), Exploração (descobrir blocos novos)
   - **Tabela de XP por nível:** Sugestão progressiva (ex: Nível 2 = 100 XP, Nível 3 = 300 XP, etc.)
   - **Ganhos por nível:** PV (conforme classe), possível ponto de atributo a cada X níveis
   - **Nível máximo por Tier:** Sugestão: Tier 1 = Nível 1-5, Tier 2 = Nível 6-10, Tier 3 = Nível 11-15
   - **Relação XP ↔ Moeda de Classe:** A Moeda de Classe desbloqueia classes, mas o nível determina o poder dentro da classe

**Referência:** [Auditoria §3.1B](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

### Tarefa 2.2 — Definir Mecânica de Troca de Origem (Espelho do Eco)

**Por quê?** O Ato 1 promete o "Espelho do Eco" como recompensa, que permite trocar de Origem. Mas não existe nenhuma regra mecânica que defina como isso funciona.

**O que fazer:**
1. Criar uma seção no Livro de Classes ou no Cap. 3 do Livro de Regras: **"Troca de Origem — O Espelho do Eco"**
2. Definir:
   - **Custo:** O Espelho do Eco (item obtido como recompensa do Ato 1)
   - **O que acontece:** O personagem ganha acesso às classes Tier 1 da nova Origem
   - **O que se mantém:** Nível, XP, habilidades ativas herdadas (dentro do limite de slots)
   - **O que se perde:** Bônus passivos de classes da origem anterior (só funcionam com classe ativa), acesso a classes da origem anterior **permanece** (já foram desbloqueadas)
   - **Restrição:** Só pode ser feito fora de combate, em local seguro (Vila/Acampamento)
   - **Justificativa narrativa:** Visão espiritual, reencarnação, pacto (já previsto em `00_Conceitos_Centrais_do_Mundo.md`)

**Referência:** [Auditoria §3.1A](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md), [`gdd/03_Enredo_e_Mundo/00_Conceitos_Centrais_do_Mundo.md`](../gdd/03_Enredo_e_Mundo/00_Conceitos_Centrais_do_Mundo.md)

---

### Tarefa 2.3 — Definir Pré-requisitos Multi-Class para Tiers 2/3

**Por quê?** No FFT, classes avançadas exigem progresso em classes anteriores. Isso incentiva diversificação. Em Eras do Brasil, qualquer classe Tier 1 é desbloqueada apenas com Moeda de Classe + Missão, sem exigir progressão em outras classes.

**O que fazer:**
1. Abrir `gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md`
2. Adicionar uma seção **"Pré-requisitos Multi-Class"** com a regra:
   - **Tier 2:** Requer Nível 5 na classe atual + Moeda de Classe + Missão NPC
   - **Tier 3:** Requer Nível 10 na classe atual + ter pelo menos 1 outra classe em Tier 2 + Moeda de Classe + Missão NPC
3. Isso garante que para chegar ao Tier 3, o jogador precisa ter experimentado pelo menos 2 classes, incentivando o multi-classing

**Referência:** [Auditoria §2.2B](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

### ✅ Checklist da Sprint 2 (CONCLUÍDA)

- [x] 2.1 — Criar sistema de XP e progressão de nível — `gdd/01_Livro_de_Regras/03B_Progressao_e_Experiencia.md`
- [x] 2.2 — Definir mecânica de troca de Origem (Espelho do Eco) — `gdd/02_Livro_de_Classes/04_Troca_de_Origem.md`
- [x] 2.3 — Definir pré-requisitos multi-class para Tiers 2/3 — `gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md`
- [x] Atualizar `03_Auditoria_GDD.md` marcando itens 6, 9 e 10 como ✅

---

## 📝 Sprint 3 — Livros Auxiliares Prioritários

> **Objetivo:** Criar os livros auxiliares que são referenciados no GDD mas ainda não existem. Priorizar apenas os necessários para o MVP e Fase 1/2.
>
> **Estimativa:** 3–5 dias
> **Pré-requisito:** Sprint 2 (sistema de XP definido)
>
> **NOTA:** Os livros de Tier 2/3 e o Bestiário completo ficam para depois do MVP.

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

### ✅ Checklist da Sprint 3

- [ ] 3.1 — Criar Livro de Habilidades (consolidado das 12 classes)
- [ ] 3.2 — Criar Livro de Itens e Equipamentos (10-15 itens MVP)
- [ ] 3.3 — Criar Livro de Proficiências de Vida
- [ ] 3.4 — Criar Bestiário Ato 1 (5+ inimigos)
- [ ] Atualizar `gdd/README.md` com links para os novos livros
- [ ] Atualizar `03_Auditoria_GDD.md` marcando "Livros Referenciados Inexistentes" com progresso

---

## 💻 Sprint 4 — Setup Unity + POCs Fundação (Módulo A)

> **Objetivo:** Criar o projeto Unity e implementar as POCs de lógica pura (C# sem gráficos). Estas são as POCs mais fundamentais — sem elas, nada mais funciona.
>
> **Estimativa:** 3–5 dias
> **Pré-requisito:** Sprint 2 (sistema de XP definido para o Tier Scaling)
>
> **NOTA:** A Sprint 3 (Livros Auxiliares) pode ser feita em paralelo com a Sprint 4, já que uma é documentação e a outra é código.

### Tarefa 4.1 — Setup do Projeto Unity

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

### Tarefa 4.2 — POC 01: Fundação de Dados

**O que fazer:** Implementar o pipeline ScriptableObject → JSON conforme os schemas definidos.

**Critério de aceite:** Console exibe "Carregados X Itens, Y Inimigos, Z Classes"

**Detalhes:** [`pocs/01-fundacao-dados/README.md`](../pocs/01-fundacao-dados/README.md)

**Regra do GDD validada:** [`gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md`](../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)

---

### Tarefa 4.3 — POC 02: Motor D20

**O que fazer:** Implementar o motor de rolagem D20 com modificadores, vantagem/desvantagem, críticos.

**Critério de aceite:** CLI simula 1000 testes e mostra distribuição de acertos/críticos.

**Detalhes:** [`pocs/02-motor-d20/README.md`](../pocs/02-motor-d20/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md`](../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)

---

### Tarefa 4.4 — POC 03: Atributos e Criação

**O que fazer:** Implementar o sistema de point-buy (27 pontos) e cálculo de modificadores.

**Critério de aceite:** Personagem criado com point-buy, modificadores calculados corretamente.

**Detalhes:** [`pocs/03-atributos-criacao/README.md`](../pocs/03-atributos-criacao/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md`](../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)

---

### Tarefa 4.5 — POC 06: Matriz de Itens 5×5

**O que fazer:** Implementar o sistema de Qualidade × Raridade para itens.

**Critério de aceite:** Gerar 50 itens aleatórios, validar bônus e durabilidade.

**Detalhes:** [`pocs/06-matriz-itens/README.md`](../pocs/06-matriz-itens/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md`](../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)

---

### Tarefa 4.6 — Wireframes de Baixa Fidelidade (UI/UX)

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

### ✅ Checklist da Sprint 4

- [ ] 4.1 — Setup do projeto Unity (projeto único, estrutura de pastas, .gitignore, namespaces)
- [ ] 4.2 — POC 01: Fundação de Dados
- [ ] 4.3 — POC 02: Motor D20
- [ ] 4.4 — POC 03: Atributos e Criação
- [ ] 4.5 — POC 06: Matriz de Itens 5×5
- [ ] 4.6 — Wireframes de baixa fidelidade (HUD, Mapa, Cena, Combate)

---

## 💻 Sprint 5 — POCs Mundo e Combate (Módulos B + D)

> **Objetivo:** Implementar o motor de tempo (Ticks) e o sistema de combate. Estes são os dois sistemas mais importantes após a fundação.
>
> **Estimativa:** 5–7 dias
> **Pré-requisito:** Sprint 4 (fundação de dados e Motor D20)

### Tarefa 5.1 — POC 07: Motor de Ticks

**O que fazer:** Implementar o relógio universal de Ticks, ciclo dia/noite, regeneração de PV.

**Critério de aceite:** Botão "Esperar" avança Tick, relógio atualiza, PV regenera.

**Detalhes:** [`pocs/07-motor-ticks/README.md`](../pocs/07-motor-ticks/README.md)

---

### Tarefa 5.2 — POC 08: Navegação por Blocos

**O que fazer:** Implementar o grafo de mundo com custo de Ticks por terreno.

**Critério de aceite:** Navegar Vila→Floresta→Ruínas gastando Ticks corretos.

**Detalhes:** [`pocs/08-navegacao-blocos/README.md`](../pocs/08-navegacao-blocos/README.md)

**Regra do GDD validada:** [`gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md`](../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)

---

### Tarefa 5.3 — POC 17: Combate Estático (Fase 1)

**O que fazer:** Implementar o loop completo de combate: Iniciativa → Turnos → D20 vs Defesa → Dano → Loot.

**Critério de aceite:** Combate completo com log mostrando toda a matemática.

**Detalhes:** [`pocs/17-combate-estatico/README.md`](../pocs/17-combate-estatico/README.md)

**Regra do GDD validada:** [`gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md`](../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)

---

### Tarefa 5.4 — POC 18: Status e Condições

**O que fazer:** Implementar condições de status (Envenenado, Atordoado, Queimando).

**Critério de aceite:** Efeitos processados corretamente por turno.

**Detalhes:** [`pocs/18-status-condicoes/README.md`](../pocs/18-status-condicoes/README.md)

---

### Tarefa 5.5 — POC 19: Habilidades em Combate

**O que fazer:** Implementar habilidades ativas, custo de recurso, efeitos de área.

**Critério de aceite:** Usar habilidades ativas com custo, efeito e fadiga.

**Detalhes:** [`pocs/19-habilidades-combate/README.md`](../pocs/19-habilidades-combate/README.md)

---

### ✅ Checklist da Sprint 5

- [ ] 5.1 — POC 07: Motor de Ticks
- [ ] 5.2 — POC 08: Navegação por Blocos
- [ ] 5.3 — POC 17: Combate Estático
- [ ] 5.4 — POC 18: Status e Condições
- [ ] 5.5 — POC 19: Habilidades em Combate

---

## 💻 Sprint 6 — POCs Economia e Persistência (Módulos E + G)

> **Objetivo:** Implementar inventário, HUD e save/load. Estes são os últimos sistemas necessários antes de integrar o MVP.
>
> **Estimativa:** 3–5 dias
> **Pré-requisito:** Sprint 5 (combate e mundo)

### Tarefa 6.1 — POC 24: Inventário

**O que fazer:** UI de inventário com equipar/desequipar, peso/capacidade.

**Detalhes:** [`pocs/24-inventario/README.md`](../pocs/24-inventario/README.md)

---

### Tarefa 6.2 — POC 28: HUD Principal

**O que fazer:** Barra superior com retrato, PV/XP, recursos, moeda, relógio de Ticks.

**Detalhes:** [`pocs/28-hud-principal/README.md`](../pocs/28-hud-principal/README.md)

**Referência visual:** [`gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md`](../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

---

### Tarefa 6.3 — POC 33: Save/Load (JSON)

**O que fazer:** Salvar e carregar estado completo do personagem em JSON.

**Detalhes:** [`pocs/33-save-load/README.md`](../pocs/33-save-load/README.md)

---

### Tarefa 6.4 — Protótipo de UI e Validação de Fluxo (UI/UX)

> 🎨 **Por quê?** Antes de implementar as POCs de UI (28, 29, 30, 31), validar o fluxo visual com um protótipo navegável. Isso evita retrabalho na implementação Unity.

**O que fazer:**
1. Refinar os wireframes da Sprint 4 com aprendizados das POCs de lógica
2. Criar protótipo navegável (Unity UI Toolkit ou Figma):
   - Fluxo: Menu → Criação → Mapa → Cena → Combate → Inventário → Save
3. Validar: legibilidade, hierarquia visual, feedback de ações
4. Atualizar wireframes em `docs/tech/wireframes/`

**Referências:**
- [Workflow de UI/UX](tech/workflow-ui-ux.md)
- [Wireframes da Sprint 4](tech/wireframes/)
- [UI Fase 1](../gdd/04_Design_Visual/05_UI_Fase_1_Exploracao_e_Combate.md)

---

### ✅ Checklist da Sprint 6

- [ ] 6.1 — POC 24: Inventário
- [ ] 6.2 — POC 28: HUD Principal
- [ ] 6.3 — POC 33: Save/Load
- [ ] 6.4 — Protótipo de UI e validação de fluxo

---

## 💻 Sprint 7 — MVP "O Despertar" (Integração)

> **Objetivo:** Integrar todas as POCs anteriores em um loop jogável de 15–30 minutos.
>
> **Estimativa:** 5–7 dias
> **Pré-requisito:** Sprints 4, 5 e 6 (todas as POCs core)

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

### Tarefa 7.1 — Integrar POCs no Projeto Principal

**O que fazer:**
1. Criar cena `MVP_Main.unity`
2. Conectar: Criação → Navegação → Combate → Inventário → Save/Load
3. Fluxo linear: Menu → Criação → Vila → Mapa → Bloco → Combate → Vitória → Loot → Vila

---

### Tarefa 7.2 — Primeiro Playtest

**O que fazer:**
1. Jogar o loop completo pelo menos 3 vezes
2. Anotar bugs, desequilíbrios, problemas de flow
3. Ajustar números (PV, dano, CD, loot)
4. **Validação de UI/UX:** Avaliar se o HUD é compreensível, se a navegação no mapa é intuitiva, se o combate tem feedback visual suficiente, se os botões de ação são claros
5. Documentar problemas de usabilidade para iteração pós-MVP

---

### Tarefa 7.3 — Build Funcional

**O que fazer:**
1. Criar build exportável (Windows/Mac)
2. Testar fora do editor Unity
3. Documentar versão e changelog

---

### ✅ Checklist da Sprint 7

- [ ] 7.1 — Integrar POCs no projeto principal
- [ ] 7.2 — Primeiro playtest (3+ runs)
- [ ] 7.3 — Build funcional exportável

---

## 📝💻 Sprint 8 — Tier 2 das Classes (Ato 2) — FUTURO

> **Objetivo:** Expandir o sistema de classes com Tier 2, Reaction Abilities, e preparar o Ato 2.
>
> **Estimativa:** Futuro (após MVP validado)
> **Pré-requisito:** Sprint 7 (MVP funcionando)
>
> ⚠️ **Esta Sprint só deve ser iniciada após o MVP estar jogável e validado.** O Tier 2 está previsto para o Ato 2 do game.

### Por que NÃO fazer o Tier 2 agora?

1. **O MVP usa apenas 1 classe Tier 1** (Guerreiro Tribal). Tier 2 não é necessário.
2. **O Ato 1 foi projetado para Tier 1.** Tier 2 é desbloqueado no final do Ato 1 como recompensa.
3. **Balancear Tier 2 sem MVP funcionando é chutar no escuro.** Primeiro valide os números do Tier 1, depois ajuste Tier 2.
4. **O documento de Tiers já existe** (`01_Tiers_e_Evolucao.md`). A estrutura está lá, só falta detalhar as habilidades.

### O que entra nesta Sprint (quando chegar a hora)

- [ ] 8.1 — Detalhar habilidades de Tier 2 para as 12 classes
- [ ] 8.2 — Criar Reaction Abilities (1 por classe)
- [ ] 8.3 — Implementar POC 04 (Tier Scaling) e POC 05 (Herança de Habilidades)
- [ ] 8.4 — Criar Livro de Magias e Rituais (necessário para classes mágicas Tier 2)
- [ ] 8.5 — Criar Livro de Receitas de Crafting
- [ ] 8.6 — Esboço do Ato 2

**Referências:**
- [Auditoria §2.2C — Reaction Abilities](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)
- [Auditoria §2.2D — Habilidades Tier 2/3](../gdd/99_Meta_e_Backlog/03_Auditoria_GDD.md)

---

## 🔍 Sobre as POCs — O Que Fazer vs. O Que Adiar

> Resumo rápido de quais POCs fazer agora e quais adiar.

### ✅ POCs Obrigatórias para o MVP (Sprints 4–6)

| # | POC | Sprint |
|---|-----|--------|
| 01 | Fundação de Dados | Sprint 4 |
| 02 | Motor D20 | Sprint 4 |
| 03 | Atributos e Criação | Sprint 4 |
| 06 | Matriz de Itens 5×5 | Sprint 4 |
| 07 | Motor de Ticks | Sprint 5 |
| 08 | Navegação por Blocos | Sprint 5 |
| 17 | Combate Estático | Sprint 5 |
| 18 | Status e Condições | Sprint 5 |
| 19 | Habilidades em Combate | Sprint 5 |
| 24 | Inventário | Sprint 6 |
| 28 | HUD Principal | Sprint 6 |
| 33 | Save/Load | Sprint 6 |

### ⏳ POCs para a Fase 2 (Pré-Alpha) — Após MVP

| # | POC | Por quê adiar? |
|---|-----|----------------|
| 04 | Tier Scaling | Tier 2 é do Ato 2 |
| 05 | Herança de Habilidades | Multi-class é Fase 2 |
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

**O que fazer AGORA (esta semana):**
1. ✅ Ler este guia completo
2. Sprint 1 — Correções do GDD (1–2 dias)
3. Sprint 2 — Sistema de XP e progressão (1–2 dias)

**O que fazer DEPOIS (próximas semanas):**
4. Sprint 3 — Livros Auxiliares prioritários (paralelo com Sprint 4)
5. Sprint 4 — Setup Unity + POCs Fundação

**O que NÃO fazer agora:**
- ❌ Tier 2/3 das classes (é do Ato 2, precisa de MVP primeiro)
- ❌ Livro de Magias (MVP não usa classes mágicas)
- ❌ Grid tático / Pathfinding (é da Fase 4 — Beta)
- ❌ Multiplayer P2P (é da Fase 5 — Release)

---

> **Última atualização:** 2026-02-13
