# Base image
FROM node:18

# Set working directory
WORKDIR /home/node/n8n

# Install n8n globally
RUN npm install -g n8n

# Expose n8n port
EXPOSE 5678

# Run n8n
CMD ["n8n", "start", "--tunnel"]
