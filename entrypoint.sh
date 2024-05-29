#!/bin/bash

# Echo ports for debugging
echo "Configuring nginx to listen on ports: $LISTEN_PORTS"

# Clear existing listen directives
sed -i '/listen/d' /etc/nginx/conf.d/default.conf

# Add new listen directives
IFS=',' read -ra ADDR <<< "$LISTEN_PORTS"
for PORT in "${ADDR[@]}"; do
    # Insert listen directive before the server_name directive
    sed -i "/server_name  localhost;/i \    listen $PORT;" /etc/nginx/conf.d/default.conf
done

# Execute the CMD from Dockerfile, i.e., start NGINX
exec "$@"
