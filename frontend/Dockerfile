# Use the official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the application
RUN npm run build

# Install serve to serve the app
RUN npm install -g serve

# Command to serve the application
CMD ["serve", "-s", "build"]
