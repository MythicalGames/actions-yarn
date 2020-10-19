FROM node:lts-alpine

RUN apk add --no-cache git python2 build-base util-linux autoconf automake libtool
RUN npm i -g --force yarn
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
