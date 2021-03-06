#!/usr/bin/env bash

db_dir="${DB_DIR}"

if [ ! $db_dir ] || [ ! -d $db_dir ] ; then
  echo ""
  echo "***************************************"
  echo "must set DB_DIR environment variable, and dir must exist on container"
  echo "***************************************"
  echo ""

  echo "EXAMPLE:"
  echo "docker run -e DB_DIR=/mnt/storage/email-backup -i -t narf/gmvault sync your@gmail.com"
  echo ""
  exit 1
fi

gmvault $* --db-dir $db_dir
