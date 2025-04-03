#!/bin/bash

SOURCE_DIR="data"
BACKUP_DIR="backups"

if [[ ! -d "$BACKUP_DIR" ]]; then
	mkdir -p "$BACKUP_DIR"
	echo "Created succesfully the backup directory : $BACKUP_DIR"
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILENAME="backup_${TIMESTAMP}.tag.gz"

tar -czf "$BACKUP_DIR/BACKUP_FILENAME" "$SOURCE_DIR"


if [[ $? -eq 0 ]]; then
	echo "Backup was succesfully"
	echo "Archive $BACKUP_DIR/$BACKUP_FILENAME"
else
	echo "Backup failed"
fi