# POC 33 — Save/Load (JSON)

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Módulo**  | G: Persistência e Rede         |
| **Prioridade** | 🟢 Core/Crítico             |

---

## Objetivo

Implementar o sistema de save/load serializando o estado completo do personagem em JSON, com validação de integridade dos dados ao carregar (HP, loot, posição intactos).

## Contexto

Valida a regra do GDD sobre **schemas estruturais**: o sistema de persistência deve salvar e carregar o estado completo do jogo (personagem, inventário, posição, progresso) em formato JSON.

📖 Referência: [01 — Schemas Estruturais](../../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)

## Pré-requisitos

| POC | Nome | Motivo |
|-----|------|--------|
| 01  | Fundação de Dados | Estruturas base de personagem para serialização |
| 03  | Atributos e Criação | Atributos do personagem a serem salvos |
| 24  | Inventário | Inventário do jogador a ser persistido |

## Escopo

### ✅ Dentro do escopo

- `SaveData` — classe de dados serializável (personagem, inventário, posição, progresso)
- `SaveManager` — gerenciamento de save/load (criar, carregar, listar saves)
- `SaveSerializer` — serialização/desserialização JSON (JsonUtility ou Newtonsoft)
- `SaveValidator` — validação de integridade dos dados ao carregar
- File I/O para leitura e escrita no disco
- Suporte a múltiplos slots de save

### ❌ Fora do escopo

- Save na nuvem / sincronização online
- Auto-save periódico
- Compressão ou criptografia de saves
- Save de estado do mundo (NPCs, facções, clima)

## Critério de Aceite

- [ ] Estado completo do personagem é serializado para JSON
- [ ] Save é gravado em arquivo no disco local
- [ ] Load reconstrói o personagem com HP/PV intactos
- [ ] Load reconstrói o inventário com todos os itens e quantidades
- [ ] Load reconstrói a posição do jogador no mundo
- [ ] Validação detecta saves corrompidos ou incompletos
- [ ] Suporte a múltiplos slots de save (criar, sobrescrever, deletar)
- [ ] Log mostra operações de save/load com sucesso ou erro

## Estrutura Sugerida

```
pocs/33-save-load/
├── README.md
└── Assets/
    └── Scripts/
        ├── SaveData.cs           # Classe de dados serializável
        ├── SaveManager.cs        # Gerenciamento de save/load
        ├── SaveSerializer.cs     # Serialização/desserialização JSON
        └── SaveValidator.cs      # Validação de integridade
```

## Referências

- [01 — Schemas Estruturais](../../gdd/06_Dados_e_Assets/01_Schemas_Estruturais.md)
- [03 — Criação de Personagem](../../gdd/01_Livro_de_Regras/03_Criacao_de_Personagem.md)
- [06 — Economia, Itens e Crafting](../../gdd/01_Livro_de_Regras/06_Economia_Itens_e_Crafting.md)
