FROM navikt/node-express:12.2.0-alpine

WORKDIR /usr/src/app/server
COPY server/ .

RUN npm ci

EXPOSE 8080
ENTRYPOINT ["/bin/sh", "start.sh"]