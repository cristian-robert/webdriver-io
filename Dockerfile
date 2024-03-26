FROM postgres:12.17-alpine3.17

# Set environment variables if necessary
ENV POSTGRES_DB=reportportal
ENV POSTGRES_USER=rpuser
ENV POSTGRES_PASSWORD=rppass

# Copy the dump file and the script into the container
COPY postgres-init/dumpfile.pgsql /docker-entrypoint-initdb.d/dumpfile.pgsql
COPY restore-db.sh /docker-entrypoint-initdb.d/restore-db.sh

# Make the script executable
RUN chmod +x /docker-entrypoint-initdb.d/restore-db.sh