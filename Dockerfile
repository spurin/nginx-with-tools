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
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
