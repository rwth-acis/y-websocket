FROM node:16
USER root

ENV HOST 0.0.0.0
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
USER node
COPY --chown=node:node . .
RUN npm install
EXPOSE 1234
CMD [ "npm", "start" ]