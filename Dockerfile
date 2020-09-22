#@# vim: set filetype=dockerfile:
FROM haproxy:2.2.3
MAINTAINER Takahiro INOUE <takahiro.inoue@mail.3dcg-arts.net>

ENV DNS_HOST=127.0.0.11
ENV DNS_PORT=53
ENV UPSTREAM_HOST=127.0.0.1
ENV UPSTREAM_PORT=80

RUN apt update     && \
    apt -y install    \
      gettext-base

COPY entrypoint.sh /docker-entrypoint.sh
COPY haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg.template
