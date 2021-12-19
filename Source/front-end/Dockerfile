FROM node:16

#App directory
WORKDIR /usr/src/apps

COPY . .

RUN yarn


EXPOSE 3000

CMD ["yarn", "build"]
CMD ["yarn", "start"]