# POC 09 — Eventos de Mundo

> **Módulo B:** Mundo e Tempo
> **Prioridade:** 🟡 Importante

---

## Objetivo

Implementar o sistema de eventos aleatórios que disparam ao entrar em blocos do mapa, com tabelas de eventos por tipo de terreno e resolução com escolhas do jogador.

## Contexto

Valida o sistema de eventos de exploração definido no GDD:

- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)

Eventos de mundo são o que torna a exploração dinâmica e imprevisível. Cada tipo de terreno tem uma tabela de eventos possíveis, e o jogador faz escolhas que ramificam o resultado — criando narrativas emergentes.

## Pré-requisitos

- **POC 07** — Motor de Ticks (base temporal para disparo de eventos)
- **POC 08** — Navegação por Blocos (entrada em blocos dispara eventos)

## Escopo

### ✅ Dentro do escopo

- EventTable: tabelas de eventos por tipo de terreno
- EventTrigger: disparo ao entrar em bloco
- Seleção aleatória com peso (weighted random)
- Resolução de eventos com escolhas (texto + opções)
- Consequências básicas das escolhas (ganho/perda de recursos)

### ❌ Fora do escopo

- Interface visual de eventos (popup elaborado)
- Eventos encadeados / quest lines
- Eventos com combate (ver POCs de combate)
- Eventos baseados em reputação (ver POC 15)

## Critério de Aceite

- [ ] Tabelas de eventos configuradas por tipo de terreno
- [ ] Eventos aleatórios **disparam ao entrar em um bloco**
- [ ] Evento exibe texto descritivo + opções de escolha
- [ ] Seleção aleatória respeita pesos configurados
- [ ] Escolhas produzem consequências (log no console)

## Estrutura Sugerida

```
pocs/09-eventos-mundo/
├── README.md
├── Assets/
│   ├── Scripts/
│   │   ├── Events/
│   │   │   ├── WorldEvent.cs            # Dados de um evento
│   │   │   ├── EventTable.cs            # Tabela de eventos por terreno
│   │   │   ├── EventTrigger.cs          # Disparo ao entrar em bloco
│   │   │   └── EventResolver.cs         # Resolução com escolhas
│   │   └── Tests/
│   │       └── EventTestRunner.cs       # Testes de disparo e resolução
│   └── Resources/
│       └── JSON/
│           └── event_tables.json
```

## Referências

- [Exploração e Mundo](../../gdd/01_Livro_de_Regras/05_Exploracao_e_Mundo.md)
- [Atlas do Eco — Ato 1](../../gdd/05_Livros_Auxiliares/01_Atlas_do_Eco_Ato1.md)
