FROM node:16

#App directory
WORKDIR /usr/src/apps

COPY . .

RUN yarn


EXPOSE 9009

CMD ["yarn", "dev"]