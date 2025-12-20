FROM nginx:mainline-alpine3.23
WORKDIR /app
COPY index.html /app/index.html
EXPOSE 80
