# Frontend React App Dockerfile
# Uses older Node version compatible with the old dependencies (2016-2017 era)
FROM node:14-alpine

# Install git (required by some npm packages like web3/bignumber.js)
RUN apk add --no-cache git

WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy source code
COPY . .

# Expose the React dev server port
EXPOSE 3000

# Start the React app (without geth - just the React part)
CMD ["npx", "react-scripts", "start"]
