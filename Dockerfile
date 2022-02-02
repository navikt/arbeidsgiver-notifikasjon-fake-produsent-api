FROM navikt/node-express:16

WORKDIR /usr/src/app/server
COPY server/ .

USER root
RUN npm ci
USER apprunner

EXPOSE 8080
ENTRYPOINT ["/bin/sh", "start.sh"]