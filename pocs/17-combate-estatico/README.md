# POC 17 — Combate Estático (Fase 1)

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar o loop completo de combate estático (sem grid): Iniciativa → Turnos → Rolagem D20 vs Defesa → Cálculo de Dano → Condição de Vitória/Derrota → Loot.

## Contexto

Valida a regra central do GDD sobre **sistema de combate**: o fluxo completo de combate por turnos usando D20, incluindo iniciativa, resolução de ataques, dano e distribuição de loot.

📖 Referência: [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Atributos e stats dos personagens |
| 02  | Motor D20 | Rolagem de dados e resolução de testes |
| 03  | Atributos e Criação | Personagem com atributos completos |

## Escopo

### ✅ Dentro do escopo

- Sistema de iniciativa (D20 + modificador de Destreza)
- Gerenciamento de ordem de turnos
- Resolução de ataque: D20 + modificador vs Defesa do alvo
- Cálculo de dano (arma + modificador de Força/Destreza)
- Condições de fim de combate (todos inimigos derrotados / party derrotada)
- Log de combate com toda a matemática visível

### ❌ Fora do escopo

- Grid tático e posicionamento espacial (ver POC 21–23)
- Status e condições (ver POC 18)
- Habilidades especiais e magia (ver POC 19)
- Interface visual de combate (ver POC 31)

## Critério de Aceite

- [ ] Iniciativa calculada corretamente (D20 + mod) e ordem de turnos definida
- [ ] Ataque resolvido: D20 + mod vs Defesa → acerto ou erro
- [ ] Dano calculado e HP do alvo reduzido
- [ ] Combate termina quando todos de um lado são derrotados
- [ ] Log de combate mostra toda a matemática (rolagens, modificadores, resultado)
- [ ] Loot distribuído ao fim do combate

## Estrutura Sugerida

```
pocs/17-combate-estatico/
├── README.md
└── Assets/
    └── Scripts/
        ├── CombatManager.cs      # Gerenciador principal do combate
        ├── TurnManager.cs        # Controle de ordem de turnos
        ├── InitiativeRoller.cs   # Cálculo de iniciativa
        ├── AttackResolver.cs     # Resolução de ataques (D20 vs Defesa)
        └── CombatLog.cs          # Log detalhado de combate
```

## Referências

- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
- [02 — Mecânicas Básicas](../../gdd/01_Livro_de_Regras/02_Mecanicas_Basicas.md)
- [03 — Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
