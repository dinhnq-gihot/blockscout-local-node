# Use Node.js base image
FROM node:latest

# Set working directory
WORKDIR /usr/src/app

# Install Ganache CLI globally
RUN npm install -g ganache

COPY . .

# Expose Ganache default port
EXPOSE 8545

# Command to run Ganache
CMD ["ganache", "-h", "0.0.0.0", "--account_keys_path", "./keys/keys.json"]
