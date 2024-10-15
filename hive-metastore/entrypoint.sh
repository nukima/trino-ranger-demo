#!/bin/bash
set -e

/download-dependencies.sh

# Initialize schema if necessary
/opt/hive/bin/schematool -dbType postgres -initSchema

# Ensure MinIO bucket exists
# /usr/bin/mc config host add myminio http://minio:9000 minio minio123
# /usr/bin/mc mb myminio/hive --ignore-existing

# Start Hive metastore
exec /opt/hive/bin/hive --service metastore