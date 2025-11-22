# 🛠️ Roadmap Técnico e POCs

Este documento detalha a execução técnica das fases planejadas no `Project Plan.md`.

## 🖥️ Stack Tecnológica Definida

| Fase do Projeto | Tecnologia Principal | Justificativa |
| :--- | :--- | :--- |
| **Fase 1 & 2 (Texto/Gestão)** | **React (Next.js) + Tailwind CSS** | Interface rica em menus, responsiva, rápida de iterar. Ótima para "jogos de navegador". |
| **Backend (Fase 2)** | **Node.js (NestJS) + PostgreSQL** | Robustez, tipagem forte (TS), fácil de escalar. |
| **Fase 3 a 6 (Visual/Tático)** | **Godot Engine (C# ou GDScript)** | Melhor engine 2D/Pixel Art atual. Leve, nós flexíveis, ótima para grids. |

---

## 🧪 Plano de POCs (Provas de Conceito)

Antes de fazer o jogo completo, faremos pequenos protótipos descartáveis para validar a lógica.

### POC 01: O Motor de Combate (Texto)
* **Objetivo:** Validar a matemática do D20, Iniciativa e Habilidades (ex: Tiro Preparado).
* **Formato:** Console Application (Node.js).
* **Entrada:** `> atacar esqueleto`
* **Saída:** `Rolagem: 15 + 2 = 17. Acerto! Dano: 6.`
* **Meta:** Garantir que a lógica do "Livro de Regras" funciona em código.

### POC 02: O Navegador de Mundo (Visual Web)
* **Objetivo:** Validar a sensação de explorar por "Blocos" e "Ticks".
* **Formato:** Web App (React).
* **Interface:**
    * Esquerda: Imagem do Lugar.
    * Direita: Texto e Botões ("Ir Norte", "Coletar").
    * Topo: Contador de Ticks e Recursos.
* **Meta:** Ver se o loop de "Gastar Tick -> Ganhar Recurso -> Mover" é divertido.

### POC 03: A Matriz de Itens (Lógica)
* **Objetivo:** Criar o gerador de itens 5x5.
* **Formato:** Script.
* **Teste:** Gerar 100 espadas aleatórias e ver se a distribuição de "Qualidade" e "Raridade" está balanceada.

---

## 📅 Ordem de Execução

1.  Finalizar documentação de Missões (Enredo Dinâmico).
2.  Criar Schemas JSON (Livros Auxiliares).
3.  Executar **POC 01** (Combate).
4.  Executar **POC 02** (Exploração).
5.  Iniciar desenvolvimento da **Fase 1 (Jogo Completo Offline)**.
