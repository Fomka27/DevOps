Розгорнув і налаштував локально Jenkins
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_1.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_2.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_3.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_4.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_5.jpg)

Створив інстанс EC2 налаштував його і розгорнув перший проєкт
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_6.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_7.jpg)

Розгорнув через terraform два сервири(jenkin-master, app-server) і задопомогою Ansible role задеплоїв на сервери налаштування і програми
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_8.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_9.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_11.jpg)

Підключив ноду до Jenkins
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_10.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_20.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_24.jpg)

Налаштував Simple Freestyle Job та запустив через maven на інстансу app-server скомпільований і запущений проєкт
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_13.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_16.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_17.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_15.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_18.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_19.jpg)

Створив pipline в корені форк репозиторія, налаштував його і запустив на сервері app-server
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_21.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_22.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_23.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture34/pic/Screenshot_25.jpg)

Також налаштував Telegram Bot Plugin і додав налаштування в пайплайн, налаштував в телеграмі через BotFather, але так воно не запрацювало, chat gpt і deepseek не допомогли. 