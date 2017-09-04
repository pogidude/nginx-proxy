for use with certbot/certbot:

docker run -it --rm -v $HOME/certs:/etc/letsencrypt:rw --volumes-from nginx_proxy certbot/certbot certonly --webroot --webroot-path=/letsencrypt/vhost -d ppcagility.com -d www.ppcagility.com -m ryann@pogidude.com --agree-tos --renew-by-default --no-eff-email --test-cert -vvv


RESOURCES:
- https://certbot.eff.org/docs/using.html#certbot-command-line-options
- https://certbot.eff.org/docs/using.html#webroot
