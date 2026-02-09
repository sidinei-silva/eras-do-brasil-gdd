# eras-do-brasil

> Projeto configurado com [Vibe Flow](https://github.com/yourusername/vibe-flow) - Desenvolvimento assistido por agentes IA especializados

## 🚀 Início Rápido

Este projeto usa o **Vibe Flow** para organizar o desenvolvimento com agentes IA especializados no GitHub Copilot.

### Agentes Disponíveis

Use o @ no chat do Copilot para chamar os agentes:

- **@researcher** - Pesquisa de mercado e validação de ideias
- **@product-manager** - Definição de produto e especificações
- **@architect** - Decisões de arquitetura e stack técnica
- **@tech-lead** - Planejamento de tarefas e roadmap
- **@vibe-keeper** - Histórico e recuperação de contexto

### Estrutura do Projeto

```
├── .github/copilot-instructions.md  # Instruções globais para o Copilot
├── .vscode/prompts/                 # Agentes customizados
├── docs/                            # Documentação oficial (A Verdade)
│   ├── product/                     # Specs de produto
│   └── tech/                        # Documentação técnica
├── vibe/                            # Contexto evolutivo e histórico
│   ├── decisions/                   # ADRs (Architecture Decision Records)
│   ├── sessions/                    # Logs de sessões de trabalho
│   ├── research/                    # Pesquisas e análises
│   ├── backlog.md                   # Backlog de tarefas
│   └── project-status.md            # Status atual do projeto
├── ROADMAP.md                       # Roadmap público do projeto
└── src/                             # Código fonte (a criar)
```

## 🎯 Próximos Passos

1. **Defina a visão do produto:**
   ```
   Abra o Copilot Chat e digite: @product-manager Quero criar [sua ideia]
   ```

2. **Pesquise o mercado (opcional):**
   ```
   @researcher Pesquise sobre [seu mercado/concorrência]
   ```

3. **Defina a arquitetura:**
   ```
   @architect Baseado na spec em docs/product/, defina a stack técnica
   ```

4. **Planeje as tarefas:**
   ```
   @tech-lead Crie o plano de execução para o MVP
   ```

5. **Comece a codar:**
   O Copilot padrão já está configurado para seguir as specs em `docs/`

## 📚 Documentação

- [Vibe Flow - Guia Completo](https://github.com/yourusername/vibe-flow)
- [Como usar os Agentes](https://github.com/yourusername/vibe-flow#agentes)

---

**Criado com Vibe Flow v1.1.0**
