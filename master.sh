#!/bin/bash
if [ -z "$SYNC_PASSWORD" ] ;then
    SYNC_PASSWORD=$RANDOM$RANDOM$RANDOM$RANDOM
    echo set env SYNC_PASSWORD is "$SYNC_PASSWORD"
fi
create_user="CREATE USER 'sync'@'%' IDENTIFIED BY '$SYNC_PASSWORD';"
grant_user="GRANT ALL PRIVILEGES ON *.* TO 'sync'@'%';"
mysql -e"$create_user"
echo "$create_user"
mysql -e"$grant_user"
echo "$grant_user"
