FROM n8nio/n8n

# Optional: set time zone (China/Singapore region)
ENV TZ=Asia/Shanghai

# Expose default N8N port
EXPOSE 5678

# Entry command
CMD ["n8n"]
