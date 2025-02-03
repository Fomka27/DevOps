Створив базу данних DynamoDB
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_1.jpg)

Налаштував DynamoDB Streams додавши в тригер функцію lambda "Myfunction"
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_3.jpg)

Створив функцію lambda "Myfunction" і надав доступ функції до DynamoDB, Amazon SES
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_4.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_5.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_6.jpg)

Додав свою почту до Amazon SES і веріфікував її
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_13.jpg)

Додав код на Python в функцію і зробив декілька тестових запитів
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_8.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_9.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_11.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_12.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_14.jpg)

Тестував не вірні дані, видає помилку і нічого не додає до бази, не відправляє листа
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture37/pic/Screenshot_10.jpg)