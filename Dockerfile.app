FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npx tsc
EXPOSE 8080
CMD ["node", "app.js"]
