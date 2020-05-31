FROM node:12-alpine
WORKDIR /usr/src/app
COPY . .
RUN yarn

ENV HOST 0.0.0.0

CMD ["yarn", "start"]