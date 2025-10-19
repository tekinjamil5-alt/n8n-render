FROM n8nio/n8n:latest

# Рабочая директория
WORKDIR /home/node/

# Настройки окружения
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_ENCRYPTION_KEY=MySuperSecretEncryptionKey
ENV GENERIC_TIMEZONE=Europe/Brussels
ENV NODE_ENV=production

# Запуск n8n напрямую через npm
CMD ["npm", "run", "start"]
