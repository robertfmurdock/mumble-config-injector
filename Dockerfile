FROM gliderlabs/alpine
RUN apk add --no-cache gettext \
  && mkdir /config
ADD mumble-server-template.ini /template/mumble-server-template.ini

CMD cat /template/mumble-server-template.ini | envsubst > /config/mumble-server.ini
