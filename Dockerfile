# Use official Node.js LTS base image
FROM node:18

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application
COPY . .

# Expose port (match your Express server port)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
