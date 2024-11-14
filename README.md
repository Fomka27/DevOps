Створив нову VPC, CIDR Block — вказав 10.0.0.0/16
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_1.jpg)

Створив дві підмережі публічну та приватну вказавши різні CIDR-блоки (10.0.0.0/24, 10.0.1.0/24)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_2.jpg)

Демонструю в налаштуваннях VPC, додавши підмережі
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_3.jpg)

Створив інтернет-шлюз
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_4.jpg)

Підв'язав його до VPC
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_5.jpg)

Створив таблицю маршрутизації і додав свій шлюз
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_6.jpg)

Додав його до VPC, зразу не побачив що немає зв'язку підмережами (далі це виправив)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_7.jpg)

Створив Security Groups і додав туди вхідні правила дозволів до HTTP та SSH, правила на вихідний залишив по замовчуваню
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_8.jpg)

Створив інстанс t2.micro з моєю VPC, включивши підмережу публічну (як бачимо на скриншоті ще не має EIP)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_9.jpg)

Додав еластичну IP-адресу до інстансу
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_10.jpg)

Виправив залежності підмереж до таблиці маршрутизації і інтернет шлюзу (Бо не міг підключитися до машини віддаленно)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_12.jpg)

Підключився до інстансу віддаленно, про демонстрував який внутрішній IP-адрес, також який зовнійшній статичний
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture22/pic/Screenshot_11.jpg)
