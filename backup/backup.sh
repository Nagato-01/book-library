#!/bin/bash
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/backup/$TIMESTAMP"
MYSQL_USER="root"
MYSQL_PASSWORD="rootpassword"
MYSQL_HOST="mysql"
MYSQL_DB="booklibrary"

mkdir -p "$BACKUP_DIR"
mysqldump -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOST $MYSQL_DB > "$BACKUP_DIR/$MYSQL_DB.sql"
