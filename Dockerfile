FROM jaindeepak110/node:v0.2

RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk add --update bash && rm -rf /var/cache/apk/*
WORKDIR /app
ADD . /app
RUN npm install
ENTRYPOINT [ "node", "server.js" ]
