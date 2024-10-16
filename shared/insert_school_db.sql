-- Вставлення даних у таблицю Institutions
INSERT INTO Institutions (institution_name, institution_type, address)
VALUES ('School #107', 'School', '107 St'),
       ('White Swan Kindergarten', 'Kindergarten', '2 White Ave'),
       ('School #130', 'School', '130 St');

-- Вставлення даних у таблицю Classes
INSERT INTO Classes (class_name, institution_id, direction)
VALUES ('Grade 1', 1, 'Mathematics'),
       ('Kindergarten A', 2, 'Language Studies'),
       ('Grade 2', 3, 'Biology and Chemistry');

-- Вставлення даних у таблицю Children
INSERT INTO Children (first_name, last_name, birth_date, year_of_entry, age, institution_id, class_id)
VALUES ('Ivan', 'Pilipov', '2014-06-15', 2020, 10, 1, 1),
       ('Anna', 'Krasnova', '2018-09-22', 2023, 6, 2, 2),
       ('Michael', 'Vasichkin', '2013-02-10', 2021, 11, 3, 3);

-- Вставлення даних у таблицю Parents
INSERT INTO Parents (first_name, last_name, child_id, tuition_fee)
VALUES ('Nikolay', 'Pilipov', 1, 1200.00),
       ('Gulia', 'Krasnova', 2, 800.00),
       ('Petr', 'Vasichkin', 3, 1000.00);