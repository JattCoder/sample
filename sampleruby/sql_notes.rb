#to create database --> sqlite3 pet_database.db

#to create new table --> CREATE TABLE cats();
#to set the id of each element --> id INTEGER PRIMARY KEY
#to set variables in db --> name TEXT, age INTEGER, breed TEXT

#now entire thing --> CREATE TABLE cats (
#    id INTEGER PRIMARY KEY,
#    name TEXT,
#    age INTEGER,
#    breed TEXT
#);

#to insert into table --> INSERT INTO cats (name,age,breed) VALUES ('Maru', 3, 'Scottish Fold');

#to retrieve data from terminal --> sqlite3 pets_database.db < 01_insert_cats_into_cats_table.sql
#SELECT id, name, age, breed FROM cats;
#SELECT * FROM cats;
#SELECT name FROM cats;
#SELECT name, age FROM cats;
#SELECT DISTINT name FROM cats;
#SELECT * FROM cats WHERE name = "Maru";
#SELECT * FROM cats WHERE age < 2;

#to update --> UPDATE cats SET name = "Hana" WHERE name = "Hannah";

#to delete --> DELETE FROM cats WHERE id = 2;

#to delete entire table --> DROP TABLE cats;