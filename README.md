Створені і запущені контейнери веб, база даних, редіс. Команди які використав для запуску docker-compose up -d
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture17/pic/Screenshot_1.jpg)

Перевірив запуск веб, відображає мій веб сайт
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture17/pic/Screenshot_2.jpg)

Команди які використовував:
docker-compose down - зупиняє і видаляє всі контейнери
docker-compose up -d --build  - перебілдив контейнери(була невеличка помилка в файлі .yml)
docker-compose ps  - виводив всі запущенні контейнери
docker-compose ps -a  - дивився чи є не запущені контейнери
docker-compose rm - були не запущені контейнери, видалив їх

Помилки були в самому файлі  docker-compose.yml (невірно вказував значення), не запускалися контейнери, також проблем з базою, були невірно вказані данні в .env файлі(невірно вказані змінні).