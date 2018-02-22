FROM node:alpine
MAINTAINER gzur <gzur@gzur.org>

# Install base packages 
RUN apk update && apk upgrade && \
	apk add curl wget bash tree

RUN npm i -g truffle solc ganache-cli