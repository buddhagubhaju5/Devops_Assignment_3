# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install the dependencies specified in package.json
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose port 3000 to allow external access to the application
EXPOSE 3000

# Command to run the application when the container starts
CMD ["node", "index.js"]
