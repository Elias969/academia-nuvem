FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*
COPY site/index.html

EXPOSE 80
