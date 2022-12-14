FROM node:10-alpine

WORKDIR /usr/src/app
COPY src/package*.json ./
RUN npm install
COPY ./src .
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]

