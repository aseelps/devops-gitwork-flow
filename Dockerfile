# Use the official Node.js image from the Docker Hub with Alpine Linux
FROM node:alpine

# Set environment variables
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

# Set the version of your application (optional)
ARG APP_VERSION=1.0.0
ENV APP_VERSION=${APP_VERSION}

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Specify the command to run your app
CMD ["npm", "start"]
