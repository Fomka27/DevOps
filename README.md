Завдання 1: Ініціалізація Docker Swarm кластера

Зробив ініцілізацію і додав дві ноди(docker swarm init, docker node ls)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_6.jpg)

Приєднав ноду
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_7.jpg)

Завдання 2: Створення та управління сервісами

Створив простий веб сервіс, маштабував його (docker service create, docker service ls, docker service scale web=3, docker service ps web)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_1.jpg)

Видалив сервіс, перевірив 
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_2.jpg)

Завдання 3: Створення стека для багатоконтейнерного застосунку

Створив docker-compose.yml з попереднього завдання, трохи адаптував до docker swarm (docker stack deploy -c docker-compose.yml myapp, docker stack services myapp)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_4.jpg)

Перевірка веб сервіса
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_8.jpg)

Видалення стеку myapp
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_5.jpg)

Завдання 4: Використання секретів для безпеки

Створив файли секреті для бази данних продемонстрував (docker exec -it) 
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_10.jpg)

Приклад через саму консоль Windows додатку
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_9.jpg)

Було дуже багато помилок, так як не працював з docker swarm, всі були пов'язані з docker-compose.yml (Неправильно вказував команди і значення), також були проблеми зі своїм веб сервісом(з лекції 17), в docker swarm є проблема що він не може копіювати файли в контейнер (мені відповів chat gpt що контейнери тільки для читання(може неправильно зрозумів)), як виходив з цієї проблеми, створив свій image my-nginx-app вже з поміняними файлами і все запрацювало.