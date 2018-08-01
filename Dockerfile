FROM node:8-alpine

RUN npm install -g git+https://git@github.com/jsbin/jsbin

ENV JSBIN_CONFIG=/usr/local/lib/node_modules/jsbin/config.default.json 

CMD jsbin 
