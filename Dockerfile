FROM node:8.12.0-alpine

LABEL maintainer="Monitoring Team"

RUN mkdir -p /app

WORKDIR /app

COPY package.json .

RUN ["npm", "install"]

COPY . /app

EXPOSE 8080

ENTRYPOINT ["npm", "start"]
