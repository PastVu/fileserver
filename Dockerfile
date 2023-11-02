FROM nginx
ENV DOWNLOADER downloader:3002
COPY templates /etc/nginx/templates
COPY conf.d /etc/nginx/conf.d