#!/bin/bash

docker run -d \
-v nginx_proxy_certs:/etc/nginx/certs:rw \
--volumes-from nginx_proxy \
-v /var/run/docker.sock:/var/run/docker.sock:ro \
--name letsencrypt_nginx_proxy \
jrcs/letsencrypt-nginx-proxy-companion
