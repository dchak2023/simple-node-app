FROM node:alpine3.22

RUN apk add --no-cache tini

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm install && npm cache clean --force

COPY . .

EXPOSE 3000

CMD [ "/sbin/tini", "--", "node", "index.js" ]