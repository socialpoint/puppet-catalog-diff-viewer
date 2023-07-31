FROM nginx:latest

LABEL org.opencontainers.image.authors="pmc@voxpupuli.org"

RUN apt-get update && apt-get install -y python3 openssl
COPY content/ /usr/share/nginx/html/
COPY conf/nginx/nginx.conf /etc/nginx/
COPY conf/nginx/conf.d/default.conf /etc/nginx/conf.d/
RUN chmod +x /usr/share/nginx/html/gen_password.sh

ENTRYPOINT ["/usr/share/nginx/html/entrypoint.sh"]
