# Используем официальный образ nginx в качестве базового образа
FROM nginx:alpine

# Копируем наш конфигурационный файл nginx в контейнер
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копируем статические файлы в директорию, обслуживаемую nginx
COPY html /usr/share/nginx/html

# Открываем порт 80 для доступа
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
