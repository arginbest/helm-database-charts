FROM nginx:stable
RUN useradd -u 5000 app \
 && mkdir -p /var/run/nginx /var/tmp/nginx \
 && chown -R app:app /usr/share/nginx /var/run/nginx /var/tmp/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf
USER app:app