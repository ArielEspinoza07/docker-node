ARG NODE_VERSION

FROM node:${NODE_VERSION}

WORKDIR /usr/src/app

COPY ./app /usr/src/app

RUN node --version && npm --version

RUN npm install

ARG EXPOSE_PORT

EXPOSE ${EXPOSE_PORT}

CMD [ "npm","run", "dev" ]