# use a stable Node version instead of `latest` for reproducible builds
FROM node:18-alpine

WORKDIR /app

# copy package files first so layer caching works
COPY package*.json ./

# install production dependencies (faster and deterministic if package-lock exists)
RUN npm ci --only=production || npm install --production

# copy source code
COPY . .

ENV PORT=3000
EXPOSE 3000

CMD ["node", "index.js"]
