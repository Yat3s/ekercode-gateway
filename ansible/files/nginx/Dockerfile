FROM nginx

ENV WORKDIR /usr/local/custom-nginx

WORKDIR ${WORKDIR}

COPY . .

RUN ls -ahl

COPY ./sites-available/* /etc/nginx/sites-available/
COPY ./snippets/* /etc/nginx/snippets/
# default nginx.conf include all .conf files in "/etc/nginx/conf.d" directory
COPY ./sites-enabled/* /etc/nginx/conf.d/
