Підняв за допомогою terraform інфраструктуру три інстанси(Monitoring server, We-server, Mysql-server) і задопомогою ansible встановив Docker(Docker-compose), програми які треба для правильної роботи, створив необхідні папки і користувача, встановив node_exporter
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_1.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_2.jpg)

Далі встановив задопомогою ansible на другий сервер базові програми, Nginx, Node Exporter
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_3.jpg)

Одразу було запущенно Docker-compose
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_4.jpg)

Налаштував Prometheus на збор данних через Node Exporter всіх серверів
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_6.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_7.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_8.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_10.jpg)

Налаштував Loki для збору логів для моніторинг сервера і flas_app(на іншому сервері web)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_11.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_12.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_13.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_14.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_15.jpg)

Налаштував Grafana додав джерела данних і імпортував дашборди
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture35/pic/Screenshot_9.jpg)