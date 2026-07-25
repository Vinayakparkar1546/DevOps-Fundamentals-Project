#!/bin/bash

BACKUP_DIR=~/Backup

mkdir -p $BACKUP_DIR

TIMESTAMP=$(date +%F-%H-%M-%S)

tar -czvf $BACKUP_DIR/website-$TIMESTAMP.tar.gz /var/www/html

echo "Backup completed."
