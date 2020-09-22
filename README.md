# reverse-proxy-docker-image

## What is this?

This is so simple reverse proxy server using the HAProxy.

## How to use

```sh
$ docker run --network my-network -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
$ curl http://127.0.0.1:8080
... # You can connect the HTTP server on 'my-web-container' from any host via the 'hinata/reverse-proxy'
```

### Environment variables by the default

- DNS_HOST=127.0.0.11
- DNS_PORT=53
- UPSTREAM_HOST=127.0.0.1
- UPSTREAM_PORT=80

### Use the DNS of default container network

```sh
$ docker run --network my-network -e DNS_HOST=127.0.0.11 -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
```

### Use the DNS of sidecar container network (e.g. When use the WeaveNet)

```sh
$ docker run --network my-network -e DNS_HOST=172.17.0.1 -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
```
