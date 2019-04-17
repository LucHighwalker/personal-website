FROM node:11
ENV NPM_CONFIG_LOGLEVEL warn

RUN mkdir -p /usr/src/app/backend
WORKDIR /usr/src/app/backend

COPY package*.json ./
RUN npm install
COPY . /usr/src/app/backend

RUN npm install -g typescript
RUN tsc

EXPOSE 4200

CMD [ "node", "./dist/index.js" ]