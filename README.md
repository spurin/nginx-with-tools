# Nginx With Tools - Container Image

This container image is based on the official Nginx image and includes additional tools useful for network troubleshooting and web requests.

## Included Tools

- `ping`: Used to check the reachability of a host on an IP network
- `nslookup`: For querying the DNS to obtain domain name or IP address mapping
- `dig`: DNS lookup utility
- `tcpdump`: Command-line packet analyzer
- `curl`: Tool to transfer data with URLs from or to a server
- `netcat` (nc): A simple Unix utility which reads and writes data across network connections, using TCP or UDP protocol. Useful for creating sockets and listening on them
- `socat`: A more complex multi-purpose relay which can be used for bidirectional data transfer. It supports multiple transport protocols including TCP and UDP
- `mtr`: Network diagnostic tool that combines ping and traceroute capabilities in one tool.
- `bind9-host`: Provides DNS utilities like `host` and `nsupdate` for DNS troubleshooting.

## Container Image

Available as a multi-arch container via Docker Hub at [spurin/nginx-with-tools](https://hub.docker.com/r/spurin/nginx-with-tools)
