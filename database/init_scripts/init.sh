#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

## DB2 サーバーが起動して応答するまで待つ関数
#wait_for_db2() {
#    local max_attempts=30
#    local attempt=1
#
#    while ! su - db2inst1 -c "db2 connect to testdb user db2inst1 using password" >/dev/null 2>&1; do
#        if [ $attempt -ge $max_attempts ]; then
#            echo "DB2 is not available after $max_attempts attempts. Exiting."
#            exit 1
#        fi
#        echo "Waiting for DB2 to be available... (attempt $attempt)"
#        sleep 10
#        attempt=$((attempt + 1))
#    done
#    echo "DB2 is now available."
#}
#
#wait_for_db2

su - db2inst1 -c　"db2 connect to testdb user db2inst1 using password"

for f in "$SCRIPT_DIR"/init_scripts/*.sql; do
    echo "Running $f"
    db2 -tvf "$f"
done