#!/bin/bash

# 1. Pega o caminho do arquivo que você passou como argumento
ARQUIVO=$1

# 2. Verifica se você realmente digitou o nome de um arquivo
if [ -z "$ARQUIVO" ]; then
    echo "❌ Erro: Você precisa informar o arquivo."
    echo "Exemplo de uso: ./git-history.sh src/index.js"
    exit 1
fi

# 3. Verifica se o arquivo existe (opcional, mas recomendado)
if [ ! -f "$ARQUIVO" ]; then
    echo "⚠️  Aviso: O arquivo '$ARQUIVO' não existe atualmente no diretório (talvez tenha sido deletado?), mas buscaremos no histórico mesmo assim."
fi

# 4. Cria um nome limpo para o arquivo de saída
# O comando 'basename' pega 'src/components/Button.js' e transforma em apenas 'Button.js'
NOME_BASE=$(basename "$ARQUIVO")
OUTPUT="historico_${NOME_BASE}.diff"

echo "⏳ Gerando histórico completo para '$ARQUIVO'..."

# 5. O COMANDO MÁGICO
# --follow garante que o histórico não se perca se o arquivo foi renomeado no passado
git log -p --follow "$ARQUIVO" > "$OUTPUT"

echo "✅ Sucesso! O arquivo foi gerado: $OUTPUT"