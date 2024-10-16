-- Анонімізація таблиці Children
UPDATE Children
SET first_name = 'Child', last_name = 'Anonymous';

-- Анонімізація таблиці Parents
UPDATE Parents
SET first_name = CONCAT('Parent', parent_id), last_name = CONCAT('Anonymous', parent_id);

-- Анонімізація таблиці Institutions
UPDATE Institutions
SET institution_name = CONCAT('Institution', institution_id);

-- Анонімізація вартості навчання в таблиці Parents
UPDATE Parents
SET tuition_fee = ROUND(800 + (RAND() * 400), 2);  -- випадкове значення між 800 і 1200