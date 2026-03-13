# 1. Беремо за основу суперлегкий образ Nginx
FROM nginx:alpine

# 2. Копіюємо наше резюме в папку, звідки Nginx роздає сайти
COPY index.html /usr/share/nginx/html/index.html

# 3. Кажемо, що контейнер буде слухати порт 80 (стандартний HTTP)
EXPOSE 80
