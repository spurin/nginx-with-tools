# Nginx With Tools - Container Image

This container image is based on the official Nginx image and includes additional tools useful for network troubleshooting and web requests. The image can also be conveniently run on multiple ports using an environment variable at runtime.

## Included Tools

- `bind9-host`: Provides DNS utilities like `host` and `nsupdate` for DNS troubleshooting.
- `curl`: Tool to transfer data with URLs from or to a server.
- `dig`: DNS lookup utility.
- `lsof`: A utility to list open files. It is used to determine which files are open by which process.
- `mtr`: Network diagnostic tool that combines ping and traceroute capabilities in one tool.
- `ncat`: A versatile networking utility which can read and write data across networks from the command line, using TCP or UDP protocol.
- `netcat` (nc): A simple Unix utility which reads and writes data across network connections, using TCP or UDP protocol. Useful for creating sockets and listening on them.
- `nmap`: Network Mapper, a utility for network discovery and security auditing.
- `nslookup`: For querying the DNS to obtain domain name or IP address mapping.
- `ping`: Used to check the reachability of a host on an IP network.
- `ps`: Displays information about a selection of the active processes. It is useful for monitoring the current processes.
- `socat`: A more complex multi-purpose relay which can be used for bidirectional data transfer. It supports multiple transport protocols including TCP and UDP.
- `tcpdump`: Command-line packet analyzer.

## Multiple Ports

By default, the environment variable `LISTEN_PORTS` is set to 80. Running this with comma seperated values will configure nginx to listen on different ports on startup.

## Example Usage

### Docker

```bash
docker run -e LISTEN_PORTS=80,8080 spurin/nginx-with-tools
```

### Kubernetes

```bash
kubectl run nginx-with-tools --image=spurin/nginx-with-tools --env="LISTEN_PORTS=80,8080"
```

## Container Image

Available as a multi-arch container via Docker Hub at [spurin/nginx-with-tools](https://hub.docker.com/r/spurin/nginx-with-tools)
