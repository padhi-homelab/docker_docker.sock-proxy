# docker_socket-proxy <a href='https://github.com/padhi-homelab/docker_docker.sock-proxy/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_docker.sock-proxy/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/docker.sock-proxy'><img src='https://img.shields.io/docker/image-size/padhihomelab/docker.sock-proxy/latest?logo=docker&logoWidth=24&style=for-the-badge'></img></a> <a href='https://microbadger.com/images/padhihomelab/docker.sock-proxy'><img src='https://img.shields.io/microbadger/layers/padhihomelab/docker.sock-proxy/latest?logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [HAProxy] Docker image, based on Alpine Linux, to proxy a local [docker.sock] file.

### Supported Architectures

- `x86` (`linux/386`)
- `amd64` (`linux/amd64`)
- `arm` (`linux/arm/v6`)
- `armhf` (`linux/arm/v7`)
- `aarch64` (`linux/arm64`)
- `ppc64le` (`linux/ppc64le`)

### Credits

#### https://github.com/Tecnativa/docker-socket-proxy
  - My [HAProxy config](haproxy.cfg) and [Dockerfile](Dockerfile)
    are mostly derived from this excellend project
  - I updated [HAProxy] version to 2.2 (also verified [Docker API] 1.40 support)
  - I added stats monitoring frontend to HAProxy (exposed on port `9000`)
  - The multiarch build workflow is a bit cleaner



[Alpine Linux]: https://alpinelinux.org/
[Docker API]:   https://docs.docker.com/engine/api/
[docker.sock]:  https://docs.docker.com/engine/reference/commandline/dockerd/#daemon-socket-option
[HAProxy]:      https://github.com/docker/compose/
