FROM node:18
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm ci
RUN npm install -g typescript
COPY app/ ./
RUN tsc
EXPOSE 8080
CMD ["node", "app.js"]
