# reverse-proxy-docker-image

## What is this?

This is so simple reverse proxy server using the HAProxy.

## Try this container

```sh
$ docker run --network my-network -e UPSTREAM_HOST=my-web-container -d -p 127.0.0.1:8080:80 hinata/reverse-proxy
```
