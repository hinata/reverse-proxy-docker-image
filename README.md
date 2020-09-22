# reverse-proxy-docker-image

## What is this?

This is so simple reverse proxy server using the HAProxy.

## How to use

```sh
$ docker run --network my-network -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
$ curl http://127.0.0.1:8080
... # You can read contents in the 'my-web-container' from any host by 'hinata/reverse-proxy'
```

### Configure a DNS on the default container network

```sh
$ docker run --network my-network -e DNS1_HOST=127.0.0.11 -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
```

### Configure a DNS on the sidecar container network (e.g. the WeaveNet)

```sh
$ docker run --network my-network -e DNS1_HOST=172.17.0.1 -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
```
