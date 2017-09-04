#!/bin/bash

docker run -d -p 80:80 -p 443:443 \
-v /var/run/docker.sock:/tmp/docker.sock:ro \
-v /home/pogidude/certs:/etc/nginx/certs:ro \
-v /etc/nginx/vhost.d \
-v /usr/share/nginx/html \
--label com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy=true \
--restart unless-stopped --name nginx_proxy pogidude/nginx_proxy
