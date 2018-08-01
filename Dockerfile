FROM node:8-alpine

RUN apk add --no-cache --virtual .build-dependencies git \
  && npm install -g grunt-cli git+https://git@github.com/jsbin/jsbin \
  && apk del .build-dependencies && rm -rf /var/cache/* /tmp/npm*

ENV JSBIN_CONFIG=/usr/local/lib/node_modules/jsbin/config.default.json 
EXPOSE 3000
CMD jsbin 
