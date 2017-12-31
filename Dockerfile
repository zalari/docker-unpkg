FROM node:8

WORKDIR /usr/src/app
VOLUME /var/lib/npm

EXPOSE 5000
ENV PORT 5000
ENV NPM_PACKAGE_CACHE_DIR /var/lib/npm

COPY package.json yarn.lock ./
RUN yarn --pure-lockfile

COPY . .

RUN yarn build
RUN ls node_modules
