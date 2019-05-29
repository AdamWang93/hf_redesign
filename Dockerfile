FROM node:8

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install nuxt

RUN npm install cross-env

# Bundle app source
COPY . .

CMD [ "npm", "start" ]