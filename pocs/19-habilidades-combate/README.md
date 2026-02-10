# POC 19 — Habilidades em Combate

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar o uso de habilidades ativas em combate, incluindo custo de recurso (Mana/Fadiga), efeitos de área (AoE), e o sistema de fadiga mágica.

## Contexto

Valida a regra do GDD sobre **magia, habilidades ativas e fadiga**: personagens usam habilidades que consomem recursos, podem atingir áreas e acumulam fadiga mágica com o uso repetido.

📖 Referência: [07 — Magia e Espiritualidade](../../gdd/01_Livro_de_Regras/07_Magia_e_Espiritualidade.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 02  | Motor D20 | Rolagens para resolução de habilidades |
| 17  | Combate Estático | Loop de combate onde habilidades são usadas |
| 18  | Status e Condições | Habilidades podem aplicar efeitos de status |

## Escopo

### ✅ Dentro do escopo

- `AbilityData` — dados da habilidade (nome, custo, tipo, alcance, área)
- Gasto de recurso (Mana, Fadiga) ao usar habilidade
- Targeting de área (AoE): cone, círculo, linha
- Acúmulo de fadiga mágica com uso repetido
- Resolução de efeito (dano, cura, aplicação de status)

### ❌ Fora do escopo

- Árvore de habilidades e progressão (ver POC 05)
- Posicionamento espacial para AoE no grid (ver POC 23)
- Animações visuais de habilidades

## Critério de Aceite

- [ ] Habilidade ativa pode ser usada durante o turno do personagem
- [ ] Custo de recurso (Mana/Fadiga) é consumido corretamente
- [ ] Habilidade com insuficiência de recurso não pode ser usada
- [ ] AoE atinge múltiplos alvos conforme formato definido
- [ ] Fadiga mágica acumula com uso repetido de magia
- [ ] Habilidade pode aplicar efeito de status ao alvo (integração com POC 18)

## Estrutura Sugerida

```
pocs/19-habilidades-combate/
├── README.md
└── Assets/
    └── Scripts/
        ├── Ability.cs            # Dados e definição de uma habilidade
        ├── AbilityResolver.cs    # Resolução de efeito da habilidade
        ├── ResourcePool.cs       # Pool de recursos (Mana, Fadiga)
        ├── FatigueTracker.cs     # Rastreamento de fadiga mágica
        └── AoETargeter.cs        # Seleção de alvos em área
```

## Referências

- [07 — Magia e Espiritualidade](../../gdd/01_Livro_de_Regras/07_Magia_e_Espiritualidade.md)
- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
- [03 — Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
