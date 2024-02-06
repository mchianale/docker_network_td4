FROM node:18
WORKDIR /usr/src/app
COPY app/package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of your application code
COPY app/ ./

# Run the TypeScript compiler
RUN tsc

EXPOSE 8080
CMD ["node", "app.js"]
