# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first (para mas ma-cache ang dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the code
COPY . .

# Expose the port (Render usually sets PORT env automatically)
EXPOSE 5000

# Start the server
CMD ["node", "server.js"]