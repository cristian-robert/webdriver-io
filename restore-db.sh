#!/bin/bash
set -e

DB_USER="${POSTGRES_USER:-rpuser}"
DB_NAME="${POSTGRES_DB:-reportportal}"

# Wait for PostgreSQL to start
until pg_isready -U "$DB_USER"; do
  sleep 1
done

# Customize this section to handle your dump file appropriately
pg_restore -U "$DB_USER" -d "$DB_NAME" /path/to/your/dumpfile.pgsql