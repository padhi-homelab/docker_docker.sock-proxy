FROM haproxy:2.4.16-alpine AS base

FROM padhihomelab/alpine-base:3.15.4_0.19.0_0.2

# HAProxy settings
ENV LOG_LEVEL=debug \
    METH_POST=0

# Default allowed Docker API URIs
ENV PING=1 \
    VERSION=1

# Default denied Docker API URIs
ENV AUTH=0 \
    BUILD=0 \
    COMMIT=0 \
    CONFIGS=0 \
    CONTAINERS=0 \
    DISTRIBUTION=0 \
    EVENTS=0 \
    EXEC=0 \
    IMAGES=0 \
    INFO=0 \
    NETWORKS=0 \
    NODES=0 \
    PLUGINS=0 \
    SECRETS=0 \
    SERVICES=0 \
    SESSION=0 \
    SWARM=0 \
    SYSTEM=0 \
    TASKS=0 \
    VOLUMES=0

RUN apk add --no-cache --update \
    haproxy=2.4.16-r0 \
    socat

COPY --from=base \
     /usr/local/etc/haproxy/errors \
     /etc/haproxy/errors

COPY haproxy.cfg                /etc/haproxy/haproxy.cfg

COPY entrypoint-scripts \
     /etc/docker-entrypoint.d/99-extra-scripts

RUN chmod +x /etc/docker-entrypoint.d/99-extra-scripts/*.sh

EXPOSE 1279
EXPOSE 9000

CMD haproxy -W -db -f /etc/haproxy/haproxy.cfg

HEALTHCHECK --start-period=5s --interval=10s --timeout=3s --retries=3 \
        CMD ["wget", "-qSO", "/dev/null",  "http://localhost:9000/"]
