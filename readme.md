# ProShop eCommerce Platform (v3)

> eCommerce platform built with the MERN stack & Redux.

<img src="./frontend/public/images/screens.png">

This project is a  [MERN Stack | eCommerce Platform]
It is a full-featured shopping cart with PayPal & credit/debit payments.

This is version 3.0 of the app, which uses Redux Toolkit. The first version can be found [here](https://proshopdemo.dev).

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

### Using npm

1. Clone the repository:
   ```bash
   git clone https://github.com/mb-eddie/proshop_v3.git
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



Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
