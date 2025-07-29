FROM node:18-alpine

# Set timezone (optional)
ENV TZ=Asia/Shanghai

# Create app folder
WORKDIR /app

# Install N8N
RUN npm install n8n -g

# Expose default N8N port
EXPOSE 5678

# Start N8N
CMD ["n8n"]
