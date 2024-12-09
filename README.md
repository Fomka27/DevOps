Використував AWS CLI і eksctl, встановивши його на свій ПК
Створив кластер EKS,з двох воркер-нод (Node Groups) у публічній підмережі, застосував t3.medium
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_1.jpg)

Налаштував kubectl для доступу до кластера
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_2.jpg)

Розгорнув статичний вебсайт, використовав ConfigMap з файлу index.html
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_3.jpg)

Демонстрація роботи статичного сайту
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_15.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_16.jpg)

Створив PersistentVolumeClaim для збереження даних
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_4.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_14.jpg)

Запустив завдання за допомогою Job і перевірив
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_5.jpg)

Розгорнув тестовий застосунок
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_6.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_7.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_8.jpg)

Попрацював з неймспейсами
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_10.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_11.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_12.jpg)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_13.jpg)

Очистив всі ресурси, ресурси всі були видалені автоматично(ще запустив таку команду kubectl delete all --all -A)
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture25/pic/Screenshot_17.jpg)