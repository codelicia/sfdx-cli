FROM node:stretch-slim

RUN apt update && apt install -y git openssh-server ca-certificates openssl jq gettext xmlstarlet build-essential openjdk-8-jdk-headless

RUN npm install sfdx-cli prettier prettier-plugin-apex --global
RUN sfdx --version
RUN sfdx plugins --core

USER node
