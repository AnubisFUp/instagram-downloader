FROM node:20.18-slim

WORKDIR /app

COPY package-lock.json  package.json ./

RUN npm ci && npm cache clean --force

COPY . .

ENTRYPOINT ["npm", "run", "start"]
