FROM node:24.3.0-bullseye

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npx playwright install --with-deps