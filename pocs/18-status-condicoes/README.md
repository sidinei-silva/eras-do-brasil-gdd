# POC 18 — Status e Condições

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | D: Combate                     |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar o sistema de efeitos de status (Envenenado, Atordoado, Queimando, etc.), com controle de duração, processamento por turno e regras de empilhamento.

## Contexto

Valida a regra do GDD sobre **condições e efeitos de status em combate**: efeitos temporários que alteram atributos, causam dano ao longo do tempo ou impedem ações, processados a cada turno.

📖 Referência: [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 17  | Combate Estático | Loop de combate base para aplicar status |

## Escopo

### ✅ Dentro do escopo

- Classe base `StatusEffect` com tipo, duração, magnitude
- Enum `StatusType` (Envenenado, Atordoado, Queimando, Amaldiçoado, etc.)
- `StatusTracker` por personagem — lista de efeitos ativos
- Processamento por turno: dano periódico, impedimento de ação, modificadores
- Regras de empilhamento (renovar duração, empilhar magnitude, etc.)
- Aplicação e remoção de efeitos

### ❌ Fora do escopo

- Habilidades que causam status (ver POC 19)
- Visualização de ícones de status na UI (ver POC 31)
- Cura ou remoção mágica de status

## Critério de Aceite

- [ ] Aplicar status "Envenenado" — dano por turno processado corretamente
- [ ] Aplicar status "Atordoado" — personagem perde o turno
- [ ] Aplicar status "Queimando" — dano por turno com duração finita
- [ ] Status expira após duração determinada
- [ ] Regras de empilhamento funcionam (ex: reaplicar renova duração)
- [ ] Log mostra aplicação, processamento e remoção de cada efeito

## Estrutura Sugerida

```
pocs/18-status-condicoes/
├── README.md
└── Assets/
    └── Scripts/
        ├── StatusEffect.cs      # Classe base de efeito de status
        ├── StatusType.cs        # Enum com tipos de status
        ├── StatusTracker.cs     # Rastreador de efeitos ativos por personagem
        └── StatusProcessor.cs   # Processamento de efeitos por turno
```

## Referências

- [04 — Sistema de Combate](../../gdd/01_Livro_de_Regras/04_Sistema_de_Combate.md)
- [07 — Magia e Espiritualidade](../../gdd/01_Livro_de_Regras/07_Magia_e_Espiritualidade.md)
