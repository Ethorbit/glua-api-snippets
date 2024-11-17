FROM node:18 AS base
ARG UID=1000
ARG GID=1000
VOLUME /output
RUN groupmod -g ${GID} node &&\
    usermod -u ${UID} node
USER node
WORKDIR /home/node

FROM base AS requirements
COPY --chown=node:node ./package.json .
RUN npm install

FROM requirements
COPY --chown=node:node . .
