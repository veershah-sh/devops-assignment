# Use a lightweight Node runtime
FROM node:22-alpine


# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --only=production || npm install --production

# Copy app source code
COPY . .

# Expose port and set default command
ENV PORT=3000
EXPOSE 3000

CMD ["node", "index.js"]
