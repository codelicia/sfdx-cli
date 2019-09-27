FROM node:alpine
RUN npm install --global sfdx-cli && sfdx --version
USER node
CMD ["sfdx"]
