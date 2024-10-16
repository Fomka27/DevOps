1) Отримання списку всіх дітей разом із закладом та напрямом навчання
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_1.jpg
2) Отримання інформації про батьків і їхніх дітей разом із вартістю навчання
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_2.jpg
3) Отримання списку всіх закладів з адресами та кількістю дітей у кожному закладі
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_3.jpg
4) Створення Анонімізація даних (Анонімізація таблиці Children, Анонімізація таблиці Parents, Анонімізація таблиці Institutions, Анонімізація фінансових даних). Запит для перевірки анонімізаці 
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_4.jpg
5) Створення бекапу бази даних командою mysqldump -u root -p SchoolDB > SchoolDB_backup.sql
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_5.jpg
6) Додав в клас 1(математичний) ще одного учня, для перевірки відновлення з бекапу бази даних
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_6.jpg
7) Відновлення бази даних з бекапу командою mysql -u root -p SchoolDB < SchoolDB_backup.sql
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_7.jpg
8) Переконався що відновлення бази даних відбулось успішно, запису який створював на єтапі 6-ть більше не має
https://github.com/Fomka27/DevOps/raw/lecture13/pic/Screenshot_8.jpg
Бекап SchoolDB_backup.sql має данні після анонімізації
Файл бекапа SchoolDB_backup_new.sql має данні без анонімізації