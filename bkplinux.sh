#!/bin/bash

# Define o nome do arquivo de backup e a pasta a ser copiada
BACKUP_FILE="backup_home_$(date +%Y%m%d).tar.gz"
BACKUP_DIR="/home/"

# Cria o arquivo de backup
tar -czvf "$BACKUP_FILE" "$BACKUP_DIR"

# Move o arquivo de backup para a pasta de destino
mv "$BACKUP_FILE" "/destino/do/backup/"
