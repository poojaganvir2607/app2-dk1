FROM nginx:mainline-alpine3.23
RUN rm -rf /usr/share/nginx/html/*
COPY *.html /usr/share/nginx/html/
COPY ./tls.crt /etc/ssl/certs/tls.crt
COPY ./tls.key /etc/ssl/certs/tls.key
COPY ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 443
