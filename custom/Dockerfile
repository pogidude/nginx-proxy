FROM jwilder/nginx-proxy
RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 256m;'; \
} > /etc/nginx/conf.d/my_proxy.conf

RUN mkdir -p /etc/nginx/vhost.d /letsencrypt/vhost

RUN { \
      echo 'location /.well-known/acme-challenge/ {'; \
      echo 'allow all;'; \
      echo 'root /letsencrypt/vhost;'; \
      echo 'try_files $uri =404;'; \
      echo 'break;'; \
      echo '}'; \
} >> /etc/nginx/vhost.d/default
