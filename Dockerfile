FROM node:22-alpine

WORKDIR /app

# Agregamos esta línea para instalar Python y compiladores de C++
RUN apk add --no-cache python3 make g++

COPY package.json .
RUN npm install

COPY . .

RUN mkdir -p /app/datos

EXPOSE 3000

CMD ["node", "server.js"]