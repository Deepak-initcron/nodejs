FROM jaindeepak110/node:v0.2

RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk add --update bash && rm -rf /var/cache/apk/*
EXPOSE 8080
WORKDIR /app
ADD . /app
RUN npm install
ENTRYPOINT [ "node", "server.js" ]

