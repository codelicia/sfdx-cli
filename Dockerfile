FROM node:stretch-slim

RUN apt update && apt install -y git openssh-server ca-certificates openssl jq gettext xmlstarlet build-essential libcurl4-gnutls-dev libexpat1-dev libz-dev libssl-dev make && \
    git clone git://git.kernel.org/pub/scm/git/git.git && \
    cd git && \
    make prefix=/usr/ all && \
    make prefix=/usr/ install && \
    cd .. && \
    rm -rf git && \
    npm install sfdx-cli prettier prettier-plugin-apex --global && \
    sfdx --version && \
    sfdx plugins --core && \
    mkdir -p /usr/share/man/man1 && \
    apt-get install openjdk-8-jre-headless -y && \
    apt-get purge libcurl4-gnutls-dev libexpat1-dev libz-dev libssl-dev make build-essential -y && \
    apt-get autoremove -y && \
    apt-get clean && \ 
    rm -rf /var/lib/apt/lists/*

USER node
