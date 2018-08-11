FROM nginx:mainline-alpine

COPY . /usr/share/nginx/html

WORKDIR /usr/share/nginx/

RUN chmod 755 $(find /usr/share/nginx/html -type d) && chmod 644 $(find /usr/share/nginx/html -type f)

EXPOSE 80