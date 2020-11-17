ARG TAG=latest
ARG TAG_EN=en
FROM pastvu/pastvu:${TAG} AS ru
FROM pastvu/pastvu:${TAG_EN} AS en

FROM nginx
COPY --from=en /code/views /views
COPY --from=ru /code/public /public/ru
COPY --from=en /code/public /public/en
COPY conf.d /etc/nginx/conf.d

EXPOSE 80
