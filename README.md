Перемикання на нову базу даних use gymDatabase, Створення колекцій db.createCollection("clients"), db.createCollection("memberships"), db.createCollection("workouts"), db.createCollection("trainers").
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_1.jpg)
Заповнення колекції команди db.clients.insertMany, db.memberships.insertMany, db.workouts.insertMany, db.trainers.insertMany
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_2.jpg)
Знайти всіх клієнтів віком понад 30 років команда db.clients.find({ age: { $gt: 30 } })
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_3.jpg)
Перелічити тренування із середньою складністю db.workouts.find({ difficulty: "Medium" })
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_4.jpg)
Показати інформацію про членство клієнта з певним client_id команда db.memberships.find({ client_id: 1 })
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_5.jpg)
Зробив запит всіх клієнтів команда db.clients.find({})
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_6.jpg)
Запит всіх тренерів команда db.trainers.find({})
![Image alt](https://github.com/Fomka27/DevOps/raw/lecture14/pic/Screenshot_7.jpg)
У файлі insert_db.txt помістив те що додавав в колекції.
Зберігав все у файл такою командою mongosh gymDatabase --eval 'printjson(db.clients.find({}).toArray())' > clients_output.json, це зробив для всіх колекцій окремо.