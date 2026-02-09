#!/bin/bash

# Script para copiar todos os arquivos markdown para a pasta todos-arquivos
# Exclui as pastas .devcontainer e .vscode
# Copia apenas os arquivos, sem preservar estrutura de pastas

# Define o diretório de destino
DEST_DIR="todos-arquivos"

# Remove a pasta de destino se já existir
if [ -d "$DEST_DIR" ]; then
    echo "Removendo pasta existente $DEST_DIR..."
    rm -rf "$DEST_DIR"
fi

# Cria a pasta de destino
echo "Criando pasta $DEST_DIR..."
mkdir -p "$DEST_DIR"

# Contador de arquivos copiados
count=0

# Encontra todos os arquivos .md excluindo .devcontainer e .vscode
echo "Buscando e copiando arquivos markdown..."

while IFS= read -r file; do
    # Pula se o arquivo estiver em .devcontainer ou .vscode
    if [[ "$file" == *"/.devcontainer/"* ]] || [[ "$file" == *"/.vscode/"* ]]; then
        continue
    fi
    
    # Obtém apenas o nome do arquivo
    filename=$(basename "$file")
    
    # Copia o arquivo diretamente para a pasta de destino (sem estrutura)
    cp "$file" "$DEST_DIR/$filename"
    
    echo "Copiado: $filename"
    ((count++))
done < <(find . -type f -name "*.md" -not -path "./.devcontainer/*" -not -path "./.vscode/*" -not -path "./todos-arquivos/*")

echo ""
echo "✓ Concluído! Total de arquivos copiados: $count"
echo "✓ Arquivos salvos em: $DEST_DIR/"
