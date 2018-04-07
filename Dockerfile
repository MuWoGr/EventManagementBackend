FROM node:carbon

WORKDIR /usr/backend

COPY package.json .
RUN npm install --quiet --only=production

COPY . .