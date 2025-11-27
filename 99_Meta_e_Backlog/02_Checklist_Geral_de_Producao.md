# ✅ Checklist Geral de Produção

Status atual: **Refatoração Final de Design (Pós-Auditoria).**

## 🟢 Concluído (Fase 1 - Design)
- [x] **Enredo Principal:** Ato 1 estruturado.
- [x] **Arquitetura:** Definido modelo "Eco Compartilhado" (Co-op P2P).
- [x] **Validação IA (Round 1):** Identificados conflitos de "MMO vs P2P" e exploits de economia.

## 🟡 A Fazer Agora (Limpeza e Segurança)
Estes itens corrigem os problemas apontados pelos relatórios de áudio e texto.

### 1. Remoção de Vestígios MMO
- [ ] **Refatorar Ato 1:** Remover "Corrida pela Glória" (Competição de Servidor). Substituir por "Corrida contra a Facção Rival (IA)".
- [ ] **Limpeza Terminológica:** Remover termos como "Servidor Global", "Raiz Sazonal" e "Lobby Massivo" de todos os arquivos.

### 2. Correção de Regras de Tempo (Co-op)
- [ ] **Mundo Vivo (Cap 8):** Definir a regra da **"Bolha de Combate"**. (Quando um jogador entra em combate, o tempo para ou cria uma instância de turno? Definir que o relógio global é pausado ou dilatado durante lutas táticas).

### 3. Segurança Econômica (Anti-Exploit)
- [ ] **Economia (Cap 6):** Adicionar regra de **"Salvamento Atômico"** para trocas P2P (evitar duplicação de itens).
- [ ] **Balanceamento:** Adicionar **Cooldown Global** ao item "Tambor que Silenciou o Céu" (evitar uso infinito em dupla).

## 🔵 Próximos Passos (Fase 2 - Dados)
*Só iniciar após a Revalidação Final (Round 2).*

- [ ] **Planejamento de Dados:** Definir a estrutura dos JSONs (Missões, Diálogos, Itens).
- [ ] **Produção:** Escrever os JSONs.

## 🔴 Futuro (Dev)
- [ ] **Fase 3:** POC Visual Offline.
- [ ] **Fase 4:** POC Visual Co-op.