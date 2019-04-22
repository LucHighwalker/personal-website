FROM node:11
ENV NPM_CONFIG_LOGLEVEL warn
ARG ENVIRONMENT

RUN mkdir -p /usr/src/app/frontend
WORKDIR /usr/src/app/frontend

COPY . /usr/src/app/frontend
RUN npm run build --production

RUN npm install -g serve

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait

RUN chmod +x /wait
RUN chmod +x ./serve.sh

EXPOSE 3000 5000

CMD /wait && ./serve.sh