FROM node:16.17.1

WORKDIR /usr/clarence/

COPY --chown=node:node . .

RUN yarn install

RUN apt-get update -y && apt-get install --no-install-recommends -y curl

CMD ["yarn", "run", "dev"]
