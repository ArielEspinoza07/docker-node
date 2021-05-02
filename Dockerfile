ARG NODE_VERSION

FROM node:${NODE_VERSION}

WORKDIR /usr/src/app

ARG APP_PATH

COPY ${APP_PATH} /usr/src/app

RUN node --version && npm --version

RUN npm i npm@latest -g

RUN npm install -f

ARG EXPOSE_PORT

EXPOSE ${EXPOSE_PORT}
