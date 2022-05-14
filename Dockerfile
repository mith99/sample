FROM node:16-alpine

RUN npm i -g typescript ts-node

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5000

CMD ["ts-node", "index.js"]
