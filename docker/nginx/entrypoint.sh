#!/bin/bash
set -e

sed -i 's/APP_DOMAIN_NAME/'"$APP_DOMAIN_NAME"'/g' /etc/nginx/conf.d/gitnotifier

sed -i 's/APP_UPSTREAM_PUMA/'"$APP_UPSTREAM_PUMA"'/g' /etc/nginx/conf.d/gitnotifier

sed -i 's/APP_RESOLVER_NGINX/'"$APP_RESOLVER_NGINX"'/g' /etc/nginx/conf.d/gitnotifier

nginx -c /etc/nginx/nginx.conf
