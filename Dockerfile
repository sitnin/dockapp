FROM node:8

EXPOSE 8000

ENV APP_DIR="/home/node/app/"
ENV CFG_DIR="/etc/app"
ENV DAT_DIR="/var/app"

VOLUME ["$CFG_DIR", "$DAT_DIR"]

WORKDIR $APP_DIR

ENV NODE_ENV=production

COPY app/dist/* ./
COPY app/package.json ./
COPY entrypoint.sh ./

COPY defaults /tmp/defaults

RUN yarn install

ENTRYPOINT ["./entrypoint.sh"]
