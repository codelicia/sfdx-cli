FROM node:ubuntu

RUN apk add --update --no-cache git openssh ca-certificates openssl jq gettext xmlstarlet

RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core

USER node
