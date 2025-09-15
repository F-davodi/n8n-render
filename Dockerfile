# Base image
FROM node:20.21

# Set working directory
WORKDIR /home/node/n8n

# Install n8n globally
RUN npm install -g n8n@latest

# Expose port
EXPOSE 5678

# Optional: fix permissions warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Start n8n with tunnel (برای Webhook)
CMD ["npx", "n8n", "start", "--tunnel"]
