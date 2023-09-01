FROM node:18-slim

RUN mkdir -p /srv/ts-template

WORKDIR /srv/ts-template

COPY package.json package-lock.json ./

RUN npm install
RUN apt update

COPY . ./

CMD ["npm", "run", "start"]