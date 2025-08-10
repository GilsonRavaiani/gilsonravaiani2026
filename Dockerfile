FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@8 && npm ci --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
