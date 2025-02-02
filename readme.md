# ProShop eCommerce Platform (v2)

> eCommerce platform built with the MERN stack & Redux.

<img src="./frontend/public/images/screens.png">

This project is part of my [MERN Stack From Scratch | eCommerce Platform](https://www.traversymedia.com/mern-stack-from-scratch) course. It is a full-featured shopping cart with PayPal & credit/debit payments.

This is version 2.0 of the app, which uses Redux Toolkit. The first version can be found [here](https://proshopdemo.dev).

## Project Overview

ProShop is an eCommerce application built using the MERN stack (MongoDB, Express, React, Node.js) and Redux for state management. It provides a seamless shopping experience with features like product reviews, ratings, and a secure checkout process.

## Features

- Full featured shopping cart
- Product reviews and ratings
- Top products carousel
- Product pagination
- Product search feature
- User profile with orders
- Admin product management
- Admin user management
- Admin Order details page
- Mark orders as delivered option
- Checkout process (shipping, payment method, etc)
- PayPal / credit card integration
- Database seeder (products & users)

## Installation Instructions

### Integrating with MongoDB using Docker

To integrate the application with MongoDB using Docker, follow these steps:

1. Update your `docker-compose.yml` file to include a MongoDB service:
   ```yaml
   version: '3'
   services:
     mongo:
       image: mongo
       container_name: mongo
       ports:
         - '27017:27017'
       volumes:
         - mongo_data:/data/db
     backend:
       build:
         context: ./backend
       ports:
         - '5000:5000'
       environment:
         - MONGO_URI=mongodb://mongo:27017/proshop
       depends_on:
         - mongo
     frontend:
       build:
         context: ./frontend
       ports:
         - '3000:3000'
       depends_on:
         - backend
   volumes:
     mongo_data:
   ```

2. Update the `MONGO_URI` in your `.env` file to match the MongoDB service:
   ```
   MONGO_URI=mongodb://mongo:27017/proshop
   ```

3. Build and start the application with Docker:
   ```bash
   docker-compose up --build
   ```

4. Access the application in your browser at `http://localhost:3000` for the frontend and `http://localhost:5000` for the backend.

### Using npm

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/proshop_v3.git
   cd proshop_v3
   ```

2. Install dependencies for the backend:
   ```bash
   npm install
   ```

3. Navigate to the frontend directory and install dependencies:
   ```bash
   cd frontend
   npm install
   ```

### Using Docker

1. Build the Docker images:
   ```bash
   docker-compose build
   ```

2. Start the application:
   ```bash
   docker-compose up
   ```

3. Access the application in your browser at `http://localhost:3000` for the frontend and `http://localhost:5000` for the backend.

## Usage Instructions

### Running the Application

- To run the frontend and backend concurrently:
  ```bash
  npm run dev
  ```

- To run the backend only:
  ```bash
  npm run server
  ```

### Environment Variables

Rename the `.env.example` file to `.env` and add the following:

```
NODE_ENV = development
PORT = 5000
MONGO_URI = your mongodb uri
JWT_SECRET = 'abc123'
PAYPAL_CLIENT_ID = your paypal client id
PAGINATION_LIMIT = 8
```

Change the JWT_SECRET and PAGINATION_LIMIT to what you want.

### Seed Database

You can use the following commands to seed the database with some sample users and products as well as destroy all data:

```bash
# Import data
npm run data:import

# Destroy data
npm run data:destroy
```

Sample User Logins:

- admin@email.com (Admin) - 123456
- john@email.com (Customer) - 123456
- jane@email.com (Customer) - 123456

## License

The MIT License

Copyright (c) 2023 Traversy Media https://traversymedia.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
