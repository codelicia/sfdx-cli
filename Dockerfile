FROM node:stretch-slim

RUN apt update && apt install -y git openssh-server ca-certificates openssl jq gettext xmlstarlet build-essential

RUN npm install sfdx-cli prettier prettier-plugin-apex --global
RUN sfdx --version
RUN sfdx plugins --core

# Work-around to make java installation work
# as per https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199
RUN mkdir -p /usr/share/man/man1
RUN apt-get install openjdk-8-jdk -y

USER node
