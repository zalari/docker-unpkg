FROM node:6

COPY package.json yarn.lock ./
RUN yarn --pure-lockfile

COPY . .

RUN yarn build

EXPOSE 5000

ENV PORT 5000
ENV REDIS_URL redis://cache:6379
ENV NPM_PACKAGE_CACHE_DIR /var/lib/npm

CMD ["node", "server.js"]
