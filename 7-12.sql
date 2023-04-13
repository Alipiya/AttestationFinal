# В подключенном MySQL репозитории создать базу данных “Друзья человека”
CREATE DATABASE `Друзья человека`;

# Создать таблицы с иерархией из диаграммы в БД
USE `Друзья человека`;

CREATE TABLE Собаки
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE Кошки
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE Хомяки
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE Лошади
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE Верблюды
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE Ослы
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

# Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения

INSERT INTO Кошки (id, Имя, Команды, ДатаРождения)
VALUES(1001,'Baghira', 'stand up', date'2015-05-13'), (1002,'Masya', 'jump', date'2017-03-11'), (1003,'Rick', 'sit', date'2018-06-21');

INSERT INTO Собаки (id, Имя, Команды, ДатаРождения)
VALUES(1004,'Baikal', 'run', date'2015-01-01'), (1005, 'Tui', 'come up, leave', date'2019-03-11'), (1006,'George', 'sit, run, give', date'2013-10-18');

INSERT INTO Хомяки (id, Имя, Команды, ДатаРождения)
VALUES(1007,'Henry', 'run', date'2019-08-08'), (1008, 'Pir', 'come up', date'2021-12-11'), (1009, 'Nemo', 'run', date'2022-01-02'), 
(1010, 'Dream', 'run', date'2022-01-12');

INSERT INTO Лошади (id, Имя, Команды, ДатаРождения)
VALUES(1011,'Blue', 'run, go slowly', date'2020-11-08'), (1012, 'Peer', 'come up', date'2017-11-19'), (1013, 'Horsy', 'trot, escape', date'2012-01-25'), 
(1014, 'Flop', 'go slowly', date'2019-01-19'), (1015, 'Sessy', 'trot, run', date'2019-01-19');

INSERT INTO Верблюды (id, Имя, Команды, ДатаРождения)
VALUES(1016,'Pinky', 'trot', date'2018-09-01'), (1017, 'Genry', 'come up', date'2020-01-19');

INSERT INTO Ослы (id, Имя, Команды, ДатаРождения)
VALUES(1018,'Greak', 'run', date'2020-11-09'), (1019, 'Atry', 'go away', date'2017-12-29'), (1020, 'Mot', 'come here, go', date'2021-01-01');

# Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
TRUNCATE TABLE Верблюды;

SELECT * FROM Лошади 
UNION SELECT * FROM Ослы
AS `Вьючные животные`;

# Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, 
# но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице

CREATE TABLE `Молодые животные`
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Собаки
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Кошки
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Хомяки
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Лошади
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Верблюды
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Ослы
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
ORDER BY id;

ALTER TABLE `Молодые животные` ADD COLUMN ВозрастПолный VARCHAR (30);
UPDATE `Молодые животные` SET ВозрастПолный = (CONCAT(TIMESTAMPDIFF(YEAR, ДатаРождения, CURRENT_DATE),' года ', 
			TIMESTAMPDIFF(MONTH, ДатаРождения, CURRENT_DATE) % 12, ' месяцев '));


# Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.

CREATE TABLE `Все животные` (
	id INT,
	Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE,
    НазваниеТаблицы ENUM('Кошки','Собаки','Хомяки', 'Лошади', 'Ослы', 'Верблюды') 
);

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Кошки'
FROM Кошки;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Собаки'
FROM Собаки; 

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Хомяки'
FROM Хомяки;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Лошади'
FROM Лошади;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Ослы'
FROM Ослы;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Верблюды'
FROM Верблюды;
