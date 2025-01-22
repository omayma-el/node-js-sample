# Use the official Node.js image as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the entire repository
COPY . .

# Install dependencies, including devDependencies for testing
RUN npm install

# Expose the app's port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
