#!/bin/bash

DB_NAME="mydatabase"


BACKUP_DIR="/backups"


BACKUP_FILE="$BACKUP_DIR/backup-$(date +\%F).sql"

MYSQL_PASSWORD="ezequiel2406"


mysqldump -u ezequiel -p$MYSQL_PASSWORD $DB_NAME > $BACKUP_FILE

gzip $BACKUP_FILE
