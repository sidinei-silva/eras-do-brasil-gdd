# POC 01 — Fundação de Dados

> **Módulo A:** Motor de Regras (Lógica Pura)
> **Prioridade:** 🟢 Core/Crítico

---

## Objetivo

Validar o pipeline de dados do jogo, criando ScriptableObjects e carregando definições a partir de arquivos JSON. Esta POC estabelece a base de dados que será reutilizada por praticamente todas as outras POCs.

## Contexto

Valida os schemas estruturais definidos no GDD:

- [Schemas Estruturais](../../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)

O jogo precisa de um pipeline confiável para definir e carregar dados de classes, itens e inimigos. Esta POC garante que ScriptableObjects podem ser populados via JSON, permitindo iteração rápida de game design sem recompilação.

## Pré-requisitos

Nenhum — esta é a primeira POC do projeto.

## Escopo

### ✅ Dentro do escopo

- Criar ScriptableObjects para `ClasseDePersonagem`, `Item` e `Inimigo`
- Carregar dados a partir de arquivos JSON
- Imprimir resumo no console Unity

### ❌ Fora do escopo

- Interface visual / UI
- Persistência em banco de dados
- Validação avançada de schemas
- Integração com gameplay

## Critério de Aceite

- [ ] ScriptableObjects criados para as três entidades (Classe, Item, Inimigo)
- [ ] Dados carregados com sucesso a partir de JSON
- [ ] Console exibe: **"Carregados X Itens, Y Inimigos, Z Classes"**

## Estrutura Sugerida

```
pocs/01-fundacao-dados/
├── README.md
├── Assets/
│   ├── Scripts/
│   │   ├── Data/
│   │   │   ├── ItemTemplate.cs          # ScriptableObject de Item
│   │   │   ├── ClasseTemplate.cs        # ScriptableObject de Classe
│   │   │   └── EnemyTemplate.cs         # ScriptableObject de Inimigo
│   │   └── Loaders/
│   │       └── DataLoader.cs            # Carrega JSONs e popula SOs
│   └── Resources/
│       └── JSON/
│           ├── itens.json
│           ├── classes.json
│           └── inimigos.json
```

## Referências

- [Schemas Estruturais](../../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)
- [Introdução e Ambientação](../../gdd/01_Livro_de_Regras/01_Introducao_e_Ambientacao.md)
