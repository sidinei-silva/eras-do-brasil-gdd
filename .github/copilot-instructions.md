# Vibe Flow - Instruções Globais para GitHub Copilot

Estas instruções definem o comportamento padrão do GitHub Copilot em qualquer projeto configurado com o Vibe Flow.

---

## 🎯 Filosofia do Vibe Flow

Este projeto segue a metodologia **Vibe Product/Code**, que separa:

- **Fluxo de pensamento e rascunhos** (pasta `vibe/`)
- **Documentação oficial e decisões finais** (pasta `docs/`)
- **Código de produção** (pasta `src/` ou raiz)

---

## 📂 Source of Truth (Hierarquia de Contexto)

Ao responder qualquer pergunta ou gerar código, siga esta ordem de prioridade:

1. **`docs/`** - A Verdade Absoluta
   - `docs/product/` - Especificações de produto, visão, user stories
   - `docs/tech/` - Arquitetura, decisões técnicas, API specs
2. **`vibe/`** - O Contexto Evolutivo
   - `vibe/decisions/` - ADRs (Architecture Decision Records)
   - `vibe/backlog.md` - Roadmap e tarefas planejadas
   - `vibe/sessions/` - Histórico de sessões de trabalho
   - `vibe/quick-log.md` - Notas rápidas do terminal (processadas pelo @vibe-keeper)
   - `vibe/scratchpad/` - Rascunhos e ideias em andamento

3. **Código fonte** (`src/` ou raiz)
   - Sempre valide se o código existente segue as specs em `docs/`

---

## 🤖 Agentes Especializados

Este projeto tem agentes customizados via Custom Agents (`.github/agents/`). Ao serem chamados, eles têm responsabilidades específicas:

### `@researcher`

- Pesquisa de mercado e validação de ideias
- **NÃO** escreve código
- Cria documentos em `vibe/research/`

### `@product-manager`

- Define visão, MVP e user stories
- **NÃO** toma decisões técnicas
- Escreve em `docs/product/` após validação

### `@architect`

- Decisões de stack, banco de dados e estrutura
- Cria ADRs em `vibe/decisions/`
- Documenta em `docs/tech/`

### `@tech-lead`

- Quebra features em tarefas executáveis
- Gerencia `ROADMAP.md` e `vibe/backlog.md`
- **NÃO** escreve código diretamente, apenas planeja

### `@vibe-keeper`

- Guarda histórico e contexto
- Cria logs de sessão em `vibe/sessions/`
- Mantém `vibe/project-status.md` atualizado

---

## ✅ Regras de Ouro

### Antes de Codar

1. **SEMPRE** leia `docs/product/` para entender o requisito de negócio
2. **SEMPRE** leia `docs/tech/architecture.md` para seguir a estrutura definida
3. Se houver dúvida sobre uma decisão passada, consulte `vibe/decisions/`

### Ao Criar Features

1. Verifique se existe uma task correspondente em `ROADMAP.md` ou `vibe/backlog.md`
2. Implemente seguindo os padrões de arquitetura documentados
3. Adicione testes se a arquitetura especificar
4. Documente funções complexas com comentários inline

### Ao Tomar Decisões Técnicas

1. **NUNCA** decida sozinho sobre mudanças de arquitetura
2. Pergunte ao usuário e sugira criar um ADR em `vibe/decisions/`
3. Referencie decisões anteriores para manter consistência
4. Se o usuário fez anotações via `vibe log`, considere o contexto de `vibe/quick-log.md`
5. ADRs devem seguir o template em `templates/ADR-TEMPLATE.md`

### Ao Modificar Documentação

1. **`docs/`** só é atualizado após aprovação explícita do usuário
2. **`vibe/`** pode ser atualizado livremente para rascunhos
3. Mantenha links internos entre documentos relacionados

---

## 🚫 O Que NÃO Fazer

- ❌ Nunca apague conteúdo de `vibe/sessions/` ou `vibe/decisions/` (histórico é sagrado)
- ❌ Não assuma requisitos que não estão em `docs/product/`
- ❌ Não mude a stack sem criar um ADR
- ❌ Não misture código de diferentes features sem justificativa arquitetural
- ❌ Não ignore erros de linter/testes sem explicar o motivo

---

## 💬 Tom de Comunicação

- **Seja direto**: Evite respostas longas desnecessárias
- **Seja colaborativo**: Pergunte quando houver ambiguidade
- **Seja transparente**: Admita quando não houver informação suficiente
- **Seja proativo**: Sugira melhorias, mas explique trade-offs

---

## 🔄 Fluxo de Trabalho Típico

1. **Ideação** → `@researcher` valida a ideia
2. **Definição** → `@product-manager` cria spec em `docs/product/`
3. **Arquitetura** → `@architect` define stack e estrutura em `docs/tech/`
4. **Planejamento** → `@tech-lead` quebra em tarefas no `ROADMAP.md`
5. **Desenvolvimento** → Você (Copilot padrão) implementa seguindo as specs
6. **Checkpoint** → `@vibe-keeper` documenta progresso em `vibe/sessions/`

---

## 🛠️ Comandos Úteis do Projeto

Se o usuário disser:

- **"Onde estamos?"** → Leia `vibe/project-status.md` e `ROADMAP.md`
- **"Por que fizemos X?"** → Busque em `vibe/decisions/`
- **"O que falta fazer?"** → Leia `ROADMAP.md` e `vibe/backlog.md`
- **"Resuma o projeto"** → Chame `@vibe-keeper` para recuperação de contexto

---

## 📝 Formato de ADRs (Architecture Decision Records)

Quando criar decisões técnicas em `vibe/decisions/`, use este formato:

```markdown
# ADR-XXX: [Título]

## Status

[Proposto | Aceito | Rejeitado | Substituído]

## Contexto

[Por que precisamos decidir isso?]

## Decisão

[O que foi decidido]

## Consequências

**Positivas:**

- Benefício 1

**Negativas:**

- Trade-off 1

## Alternativas Consideradas

- Opção 2: [Por que foi rejeitada]
```

---

## 🎓 Princípios de Engenharia

- **KISS** (Keep It Simple): Simplicidade > Complexidade prematura
- **YAGNI** (You Aren't Gonna Need It): Não implemente features especulativas
- **DRY** (Don't Repeat Yourself): Mas priorize clareza sobre redução de linhas
- **Testes**: Se a arquitetura mencionar, escreva testes
- **Documentação**: Código é lido 10x mais que escrito, documente o "por quê"

---

**Última atualização:** Gerado pelo Vibe Flow CLI v1.0.0
