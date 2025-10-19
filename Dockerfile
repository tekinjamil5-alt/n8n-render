# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Устанавливаем рабочую директорию
WORKDIR /home/node/

# Устанавливаем основные переменные окружения
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_ENCRYPTION_KEY=MySuperSecretEncryptionKey
ENV GENERIC_TIMEZONE=Europe/Brussels
ENV NODE_ENV=production

# Запускаем n8n напрямую
ENTRYPOINT ["tini", "--", "n8n"]
