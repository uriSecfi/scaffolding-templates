
FROM node:10-alpine

RUN apk update
RUN apk upgrade

WORKDIR /code

ADD ./{{name}}/bundle.tar.gz /code
