# Use official Node.js image
FROM node:18

# Set app directory
WORKDIR /usr/src/app

# Copy package.json and install
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD [ "node", "index.js" ]
