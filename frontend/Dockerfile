FROM node:11
ENV NPM_CONFIG_LOGLEVEL warn

RUN mkdir -p /usr/src/app/frontend
WORKDIR /usr/src/app/frontend

COPY . /usr/src/app/frontend
RUN npm run build --production

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "build"]