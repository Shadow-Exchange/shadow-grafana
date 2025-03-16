FROM grafana/grafana:latest

# Set only the static configurations
ENV GF_DATABASE_TYPE=postgres \
    GF_DATABASE_SSL_MODE=disable

# Create directories for persistence
RUN mkdir -p /var/lib/grafana /var/lib/grafana/plugins

# Expose the default Grafana port
EXPOSE 3000
