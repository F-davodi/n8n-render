# Base image با آخرین Node.js 20
FROM node:20

# Set working directory
WORKDIR /home/node/n8n

# نصب آخرین نسخه n8n
RUN npm install -g n8n@latest

# پورت n8n
EXPOSE 5678

# رفع ارور permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Start n8n با tunnel برای Webhook
CMD ["npx", "n8n", "start", "--tunnel"]
