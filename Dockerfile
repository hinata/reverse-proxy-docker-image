#@# vim: set filetype=dockerfile:
FROM haproxy:2.1.1
MAINTAINER Takahiro INOUE <takahiro.inoue@mail.3dcg-arts.net>

ENV DNS1_HOST 127.0.0.11
ENV DNS1_PORT 53
ENV DNS2_HOST 172.17.0.1
ENV DNS2_PORT 53
ENV UPSTREAM_HOST 127.0.0.1
ENV UPSTREAM_PORT 80

RUN apt update     && \
    apt -y install    \
      gettext-base

COPY entrypoint.sh /docker-entrypoint.sh
COPY haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg.template
