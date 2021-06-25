
#!/bin/sh

socat UNIX-LISTEN:/tmp/docker.user.sock,fork,user=$DOCKER_USER,group=$DOCKER_GROUP,mode=777 \
      UNIX-CONNECT:/var/run/docker.sock &
