FROM pastvu/pastvu AS ru
FROM pastvu/pastvu:en AS en

FROM nginx
COPY --from=en /code/views /views
COPY --from=ru /code/public /public/ru
COPY --from=en /code/public /public/en
COPY conf.d /etc/nginx/conf.d

EXPOSE 80
