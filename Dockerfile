FROM node:8

WORKDIR /app

COPY . .
RUN npm install
RUN npm run build
COPY stats.json .

ENV PORT 8080
CMD ["node", "server.js"]

EXPOSE 8080
