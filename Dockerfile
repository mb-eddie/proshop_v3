# Use the official Node.js image
FROM node:16

# Set the working directory for the backend
WORKDIR /app/backend

# Copy backend package.json and package-lock.json
COPY backend/package.json ./ 
COPY backend/package-lock.json ./

# Install backend dependencies
RUN npm install

# Copy the rest of the backend application files
COPY backend/ .

# Set the working directory for the frontend
WORKDIR /app/frontend

# Copy frontend package.json and package-lock.json
COPY frontend/package.json ./
COPY frontend/package-lock.json ./

# Install frontend dependencies
RUN npm install

# Copy the rest of the frontend application files
COPY frontend/ .

# Build the frontend application
RUN npm run build

# Install serve to serve the app
RUN npm install -g serve

# Expose the port the app runs on
EXPOSE 5000

# Command to serve the application
CMD ["serve", "-s", "build"]
