# ✅ Checklist Geral de Produção (Pós-Auditoria)

Status atual do projeto: **Transição de GDD para Produção de Conteúdo/Código.**

## 🔴 Prioridade Máxima (Bloqueantes)

### Design Visual
- [ ] **Criar UI da Fase 2:** Escrever `06_UI_Fase_2_Combate_Tatico.md` na pasta `04_Design_Visual` (Grid, Alcance, Feedback Tático).
- [ ] **Validar Lista de Assets:** Usar o NotebookLM para gerar a lista de compras de arte (baseada nos docs de UI e Classes).

### Enredo e Mundo Vivo (Refatoração)
*Objetivo: Aplicar o padrão "Mundo Vivo" (Ticks/Rotinas) e "Economia Fechada" (Moedas de Classe) em todas as missões.*
- [ ] Atualizar as 5 Missões Indígenas restantes.
- [ ] Atualizar as 6 Missões de Colonizador.
- [ ] Atualizar as 6 Missões de Ser Folclórico.
- [ ] Atualizar o Ato 1 (Adicionar recompensa garantida de Moeda de Classe no final).

### Arquitetura de Dados (Pasta 05)
- [ ] Definir Schema JSON de **Itens** (Matriz 5x5).
- [ ] Definir Schema JSON de **Inimigos**.
- [ ] Definir Schema JSON de **Habilidades**.

## 🟡 Desenvolvimento Técnico (Próximos Passos)

### Definição de Stack
- [ ] **Fase 1 & 2 (Web/Texto):** React + Next.js (Frontend), Node.js (Backend Fase 2).
- [ ] **Fase 3+ (Visual):** Godot Engine.

### Provas de Conceito (POCs)
- [ ] **POC 01 - Motor de Combate (CLI):** Script simples para rodar 1x1 com logs de texto.
- [ ] **POC 02 - Navegador de Blocos (Web):** Interface visual para andar entre nós (Baseada em *Roadwarden*).
- [ ] **POC 03 - Gerador de Itens:** Script que gera um item baseado na Matriz 5x5 (Qualidade x Raridade).

## 🟢 Concluído (Validado)
- [x] Estrutura de Pastas do GDD.
- [x] Fatiamento do Livro de Regras (com novas regras de IA/Ticks).
- [x] Fatiamento e Correção do Livro de Classes (Regras rígidas).
- [x] Fatiamento do Enredo (Estrutura base).
- [x] Definição Visual da Fase 1 (UI Estática).
