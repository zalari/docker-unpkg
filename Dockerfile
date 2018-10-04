FROM node:8

WORKDIR /app

COPY . .
RUN npm install

ENV PORT 8080
CMD ["node", "server.js"]

EXPOSE 8080
