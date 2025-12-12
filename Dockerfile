FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application files
COPY . .

# Expose the port your app runs on (adjust if different)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]