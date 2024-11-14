Створення StatefulSet для Redis-кластера
Підняв кластер із трьох машин на AWS
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_1.jpg)

продовження
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_2.jpg)

Встановив calico для взаїмодію нодів між собою
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_3.jpg)

Створив три файли для піднятя StatefulSet для Redis (redis-pvc.yaml, redis-statefulset.yaml, redis-service.yaml), демонстрував роботу redis-0
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_4.jpg)

Це вже після перезапуску redis-0
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_5.jpg)

redis-1 так не зміг запустити, він видає помилки і не захотів запускатися(Він завжди в статусі Pending і не виходить його запустит в running), витартив дуже багато часу на рішення проблеми, вирішити так не вийшло. Питав у ChatGPT теж не допомогло. В мене не вистачає знань і досвіду. 

Налаштування Falco в Kubernetes за допомогою DaemonSet
Запустив Фалко через daemonset, файл yaml присутній (kubectl apply -f falco-daemonset.yaml)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_6.jpg)

використував команду kubectl logs
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture18/pic/Screenshot_7.jpg)

