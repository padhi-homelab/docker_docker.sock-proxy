# docker_docker.sock-proxy

[![build status](https://img.shields.io/github/actions/workflow/status/padhi-homelab/docker_docker.sock-proxy/docker-release.yml?label=BUILD&branch=main&logo=github&logoWidth=24&style=flat-square)](https://github.com/padhi-homelab/docker_docker.sock-proxy/actions/workflows/docker-release.yml)
[![testing size](https://img.shields.io/docker/image-size/padhihomelab/docker.sock-proxy/testing?label=SIZE%20%5Btesting%5D&logo=docker&logoColor=skyblue&logoWidth=24&style=flat-square)](https://hub.docker.com/r/padhihomelab/docker.sock-proxy/tags)
[![latest size](https://img.shields.io/docker/image-size/padhihomelab/docker.sock-proxy/latest?label=SIZE%20%5Blatest%5D&logo=docker&logoColor=skyblue&logoWidth=24&style=flat-square)](https://hub.docker.com/r/padhihomelab/docker.sock-proxy/tags)
  
[![latest version](https://img.shields.io/docker/v/padhihomelab/docker.sock-proxy/latest?label=LATEST&logo=linux-containers&logoWidth=20&labelColor=darkmagenta&color=gold&style=for-the-badge)](https://hub.docker.com/r/padhihomelab/docker.sock-proxy/tags)
[![image pulls](https://img.shields.io/docker/pulls/padhihomelab/docker.sock-proxy?label=PULLS&logo=data:image/svg%2bxml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPHN2ZyB3aWR0aD0iODAwcHgiIGhlaWdodD0iODAwcHgiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8ZyBmaWxsPSIjZmZmIj4KICAgIDxwYXRoIGQ9Ik0yMC41ODcsMTQuNjEzLDE4LDE3LjI0NlY5Ljk4QTEuOTc5LDEuOTc5LDAsMCwwLDE2LjAyLDhoLS4wNEExLjk3OSwxLjk3OSwwLDAsMCwxNCw5Ljk4djYuOTYzbC0uMjYtLjA0Mi0yLjI0OC0yLjIyN2EyLjA5MSwyLjA5MSwwLDAsMC0yLjY1Ny0uMjkzQTEuOTczLDEuOTczLDAsMCwwLDguNTgsMTcuNGw2LjA3NCw2LjAxNmEyLjAxNywyLjAxNywwLDAsMCwyLjgzMywwbDUuOTM0LTZhMS45NywxLjk3LDAsMCwwLDAtMi44MDZBMi4wMTYsMi4wMTYsMCwwLDAsMjAuNTg3LDE0LjYxM1oiLz4KICAgIDxwYXRoIGQ9Ik0xNiwwQTE2LDE2LDAsMSwwLDMyLDE2LDE2LDE2LDAsMCwwLDE2LDBabTAsMjhBMTIsMTIsMCwxLDEsMjgsMTYsMTIuMDEzLDEyLjAxMywwLDAsMSwxNiwyOFoiLz4KICA8L2c+Cjwvc3ZnPgo=&logoWidth=20&labelColor=teal&color=gold&style=for-the-badge)](https://hub.docker.com/r/padhihomelab/docker.sock-proxy)

---

A multiarch non-root [HAProxy] Docker image, based on Alpine Linux, to proxy a local [docker.sock] file.

|        386         |       amd64        |       arm/v6       |       arm/v7       |       arm64        |      ppc64le       |       s390x        |
| :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: |
| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

## Usage

```
docker run --rm --detach \
           -v /var/run/docker.sock:/var/run/docker.sock:ro
           -p 1279:1279 \
           -it padhihomelab/docker.sock-proxy
```

Runs the proxy server on port 1279.

_<More details to be added soon>_

---

### Inspired by
  - https://github.com/Tecnativa/docker-socket-proxy


[Alpine Linux]: https://alpinelinux.org/
[Docker API]:   https://docs.docker.com/engine/api/
[docker.sock]:  https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-socket-option
[HAProxy]:      http://www.haproxy.org/
