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
#to insert NULL data into table --> INSERT INTO cats (name,age,breed) VALUES (NULL, NULL, 'Scottish Fold');

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

#to get data in order --> SELECT * FROM cats ORDER BY age;
#to get data in decending order --> SELECT * FROM cats ORDER BY age DESC;
#to get (n) number of data in decending order --> SELECT * FROM cats ORDER BY age DESC LIMIT 1;
#to get data between certain number --> SELECT * FROM cats ORDER BY age BETWEEN 1 AND 3;
#to get data where data is null --> SELECT * FROM cats WHERE name is NULL;

#to get count of data where data is same --> SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;
#to get data and their count --> SELECT breed, COUNT(breed) FROM cats GROUP BY breed;
#SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;

#to get maximum num --> SELECT MAX(gpa) FROM students;

#to get data from 2 different tables --> SELECT cats.name, dogs.name FROM cats, dogs;

#to see data in rows and columns --> .mode column , .headers on

#to create table in hash-string --> DB = Hash.new
DB = {:conn => SQLite3::Database.new("db/Music.db")}
sql = <<-SQL
	CREATE TABLE IF NOT EXISTS students (
		id INTEGER PRIMARY KEY,
		name TEXT,
		grade = INTEGER
		)
	SQL
DB[:conn].execute(sql)

#to save data to hash-string --> 
sql = <<-SQL
	INSERT INTO students (name, grade)
	VALUES(?,?)
	SQL
DB[:conn].execute(sql,self.name,self.grade)
id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
# to get last unique id created --> SELECT last_insert_rowid() FROM songs

#to fetch all data from table -->
sql = <<-SQL
	SELECT * FROM students
	SQL
DB[:conn].execute(sql).map do |row|
	#here we have array of data of row
	#or can return to same class as --> self.new_from_db(row)
end.first #.first is just grabbing first element from the returned array

#to update data in database -->
sql = "UPDATE students SET name = ?, grade= ? WHERE name = ?"
DB[:conn].execute(sql, self.name, self.grade, self.name)

#to drop a table from database --> DROP TABLE IF EXISTS students