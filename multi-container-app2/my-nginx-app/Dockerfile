# Використовуємо базовий образ NGINX
FROM nginx:latest

# Копіюємо кастомний конфігураційний файл у директорію конфігурації NGINX
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Копіюємо HTML-контент у кореневу директорію, звідки NGINX буде обслуговувати файли
COPY ./web-content /usr/share/nginx/html
