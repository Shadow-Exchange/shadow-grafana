FROM grafana/grafana:latest

# Set environment variables for PostgreSQL connection
ENV GF_DATABASE_TYPE=postgres \
    GF_DATABASE_HOST=${PGHOST} \
    GF_DATABASE_NAME=${PGDATABASE} \
    GF_DATABASE_USER=${PGUSER} \
    GF_DATABASE_PASSWORD=${PGPASSWORD} \
    GF_DATABASE_SSL_MODE=disable

# Create directories for persistence
RUN mkdir -p /var/lib/grafana /var/lib/grafana/plugins

# Expose the default Grafana port
EXPOSE 3000
