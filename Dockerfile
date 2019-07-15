FROM node:stretch-slim

RUN apt update && apt install -y git openssh-server ca-certificates openssl jq gettext xmlstarlet build-essential

RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core

USER node
