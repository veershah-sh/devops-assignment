# Use Node.js base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project, including starter-app
COPY . .

# Expose port
EXPOSE 3000

# Start the app (point to starter-app/index.js)
CMD ["node", "starter-app/index.js"]
