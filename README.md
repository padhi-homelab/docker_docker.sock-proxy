# docker_docker.sock-proxy <a href='https://github.com/padhi-homelab/docker_docker.sock-proxy/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_docker.sock-proxy/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/docker.sock-proxy'><img src='https://img.shields.io/docker/image-size/padhihomelab/docker.sock-proxy/latest?label=size%20%5Blatest%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>
<a href='https://hub.docker.com/r/padhihomelab/docker.sock-proxy'><img src='https://img.shields.io/docker/image-size/padhihomelab/docker.sock-proxy/testing?label=size%20%5Btesting%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [HAProxy] Docker image, based on Alpine Linux, to proxy a local [docker.sock] file.

|        386         |       amd64        |       arm/v6       |       arm/v7       |       arm64        |      ppc64le       |       s390x        |
| :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: |
| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

## Usage

```
docker run --rm --detach \
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
