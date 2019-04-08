# use small node image
FROM node:ubuntu

# install git ca-certificates openssl openssh for CircleCI
# install jq for JSON parsing
RUN apk add --update --no-cache git openssh ca-certificates openssl jq gettext xmlstarlet

# install latest sfdx from npm
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core

# revert to low privilege user
USER node
