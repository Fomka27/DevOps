Встановив Nginx з стокового репозиторія
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_1.jpg)
Потым додав кастомний репозиторій і встановив іншу новішу версію
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_2.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_3.jpg)
В вівши команду sudo ppa-purge ppa:ondrej/nginx-mainline я видалив кастомний Nginx і повернувся до стокового репозиторія(програми)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_4.jpg)
Зробив скрипт звичайний цикл while безкінечно виводе дату і час кожну хвилину, дав права на виконання скрипту 755
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_6.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_5.jpg)
Потім зробив сервіс який запускає мій скрипт постійно з правами root користувача і робе логи для помилок
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_7.jpg)
Налаштував iptables заборонив доступ до порта 22, дозволив до 80
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_8.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_10.jpg)
Потім дозволив доступ до порта 22
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_9.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_11.jpg)
Налаштував Fail2Ban для захисту від підбору паролів через SSH
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_12.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_13.jpg)
Спробував підібрати до root
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_14.jpg)
З створив і змонтував розділ на диску, додав до fstab для автоматичного монтування
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_16.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_15.jpg)
![Image alt](https://github.com/Fomka27/DevOps/blob/lecture6/pic/Screenshot_17.jpg)