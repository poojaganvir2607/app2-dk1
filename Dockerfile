FROM nginx:mainline-alpine3.23
RUN rm -rf /usr/share/nginx/html/*
COPY *.html /usr/share/nginx/html/
EXPOSE 443
