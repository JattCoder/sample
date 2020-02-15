require 'sqlite3'

begin

    db = SQLite3::Database.open "Vehicles.db"
    db.execute "CREATE TABLE IF NOT EXISTS cars(
        id INTEGER PRIMARY KEY,
        name TEXT,
       price INTEGER
    )"
    db.execute "INSERT INTO cars VALUES(1,'Audi',20000)"
    db.execute "INSERT INTO cars VALUES(2,'Tesla',35000)"
    db.execute "INSERT INTO cars VALUES(3,'Mercedes',40000)"
    db.execute "INSERT INTO cars VALUES(4,'Skoda',9000)"
    db.execute "INSERT INTO cars VALUES(5,'Volvo',29000)"
    db.execute "INSERT INTO cars VALUES(6,'Bentley',350000)"
    db.execute "INSERT INTO cars VALUES(7,'Citroen',21000)"
    db.execute "INSERT INTO cars VALUES(8,'Hummer',41400)"
    db.execute "INSERT INTO cars VALUES(9,'Volkswagen',21600)"

rescue SQLite3::Exception => e 

    puts "Exception occurred"
    puts e

ensure

    db.close if db

end

