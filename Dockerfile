FROM node:10-alpine

WORKDIR /opt/app

RUN apk update && apk add chromium

COPY package.json .
RUN npm install --quiet

COPY . .

ENV CHROME_BIN="/usr/bin/chromium-browser"