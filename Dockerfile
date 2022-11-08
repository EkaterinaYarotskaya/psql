FROM node:12-alpine as builder
WORKDIR /app
#COPY package.json /app/package.json
COPY .testlink-1.9.0 /app
RUN npm install --only=prod

RUN npm run build