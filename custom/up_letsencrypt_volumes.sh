#!/bin/bash

CERTDIR=$HOME/certs
CONTAINER_NAME=nginx_proxy

docker run -d -p 80:80 -p 443:443 \
-v /var/run/docker.sock:/tmp/docker.sock:ro \
-v $CERTDIR:/etc/nginx/certs:ro \
-v /etc/nginx/vhost.d \
-v /letsencrypt/vhost \
--restart unless-stopped --name $CONTAINER_NAME pogidude/nginx_proxy
