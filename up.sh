#!/bin/bash

docker run -d -p 80:80 -p 443:443 -v /var/run/docker.sock:/tmp/docker.sock:ro --restart unless-stopped --name nginx_proxy pogidude/nginx_proxy
