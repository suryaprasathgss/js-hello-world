# Use Node 18 base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install deps
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose the port the app runs on`
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
