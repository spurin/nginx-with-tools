# Use the official Nginx image as the base
FROM nginx:latest

# Install necessary tools with minimized additional dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    iputils-ping \
    dnsutils \
    tcpdump \
    curl \
    netcat-openbsd \
    socat \
    mtr \
    bind9-host \
    lsof \
    procps \
    ncat \
    nmap \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set environment variable for ports
ENV LISTEN_PORTS=80

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint to the custom script
ENTRYPOINT ["/entrypoint.sh"]

# Command to start NGINX
CMD ["nginx", "-g", "daemon off;"]
