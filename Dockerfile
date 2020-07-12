FROM haproxy:2.2-alpine

# HAProxy settings
ENV LOG_LEVEL=info \
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

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 1279
EXPOSE 9000
