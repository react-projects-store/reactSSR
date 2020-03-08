# specify the base image
FROM node:alpine

WORKDIR /usr/app

# install some dependencies
COPY ./server/package.json ./
RUN npm install

# Everything above should be cached by docker. The below should run on every build
COPY ./server ./

# Default command
CMD [ "npm", "run", "start" ]