# Backend Express.js Server Dockerfile
FROM node:14-alpine

WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose the server port
EXPOSE 3001

# Start the server
CMD ["node", "app.js"]
