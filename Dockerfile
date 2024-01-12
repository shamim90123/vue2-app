# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Vue.js application
# RUN npm run build

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your application
CMD ["npm", "run", "serve"]
