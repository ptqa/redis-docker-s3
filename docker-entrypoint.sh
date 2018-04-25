#!/bin/sh
set -e

if [ -n "${S3_DUMP}" ]; then
  aws s3 cp $S3_DUMP /data/dump.rdb 1>&2 > /dev/null
fi

exec redis-server
