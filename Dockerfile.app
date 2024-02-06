FROM node:14
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm ci
COPY app/ ./
RUN npx tsc
EXPOSE 8080
CMD ["node", "app.js"]
