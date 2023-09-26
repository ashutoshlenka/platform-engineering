# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the port that your Node.js application will run on (if applicable)
# EXPOSE 3000

# Environment variables for MongoDB and Redis connection
# ENV MONGODB_URI="mongodb://mongo:27017/mydb"
# ENV REDIS_URI="redis://redis:6379"

# Start the Node.js application
CMD ["node", "app.js"]
