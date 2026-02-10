# POC 32 — Criação de Personagem (UI)

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | F: UI e Visual                 |
| **Prioridade** | 🟡 Importante              |

---

## Objetivo

Implementar a interface de criação de personagem em etapas: Origem → Classe → Atributos → Proficiências → Equipamento → Confirmar, com navegação wizard (avançar/voltar).

## Contexto

Valida a regra do GDD sobre **criação de personagem**: o jogador segue um fluxo guiado de múltiplas etapas para criar seu personagem, escolhendo origem cultural, classe inicial, distribuindo atributos e selecionando equipamento.

📖 Referência: [03 — Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de personagem |
| 03  | Atributos e Criação | Sistema de atributos e point-buy |

## Escopo

### ✅ Dentro do escopo

- `CharacterCreationWizard` — controlador do fluxo wizard (navegação entre etapas)
- `StepOrigin` — seleção de origem (Colonizador, Indígena, Folclórico)
- `StepClass` — seleção de classe inicial (Tier 1)
- `StepAttributes` — distribuição de atributos via point-buy
- `StepProficiencies` — seleção de proficiências iniciais
- `StepEquipment` — seleção de equipamento inicial
- `StepConfirm` — tela de resumo e confirmação
- Navegação avançar/voltar entre etapas

### ❌ Fora do escopo

- Customização visual do personagem (aparência)
- Seleção de habilidades especiais (desbloqueadas por progressão)
- Tutorial integrado à criação
- Persistência da criação (POC 33)

## Critério de Aceite

- [ ] Tela de seleção de origem exibe as 3 opções com descrição
- [ ] Tela de seleção de classe exibe classes disponíveis para a origem escolhida
- [ ] Tela de atributos permite distribuição por point-buy com validação
- [ ] Tela de proficiências exibe opções disponíveis para a classe/origem
- [ ] Tela de equipamento exibe kit inicial conforme classe
- [ ] Tela de confirmação mostra resumo completo do personagem
- [ ] Navegação avançar/voltar funciona entre todas as etapas
- [ ] Botão "Confirmar" cria o personagem com todos os dados preenchidos

## Estrutura Sugerida

```
pocs/32-criacao-personagem/
├── README.md
└── Assets/
    └── Scripts/
        ├── CharacterCreationWizard.cs   # Controlador do fluxo wizard
        ├── StepOrigin.cs                # Etapa: seleção de origem
        ├── StepClass.cs                 # Etapa: seleção de classe
        ├── StepAttributes.cs            # Etapa: distribuição de atributos
        ├── StepProficiencies.cs         # Etapa: seleção de proficiências
        ├── StepEquipment.cs             # Etapa: seleção de equipamento
        └── StepConfirm.cs               # Etapa: resumo e confirmação
```

## Referências

- [03 — Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
- [00 — Sistema de Classes: Introdução](../../gdd/02_Livro_de_Classes/00_Sistema_de_Classes_Intro.md)
- [01 — Tiers e Evolução](../../gdd/02_Livro_de_Classes/01_Tiers_e_Evolucao.md)
