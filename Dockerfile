FROM python:3.10-slim

# Install Node.js for N8N
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g n8n

# Set timezone (optional)
ENV TZ=Asia/Shanghai

WORKDIR /app
EXPOSE 5678

CMD ["n8n"]
