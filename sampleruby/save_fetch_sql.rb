require 'pry'
require 'sqlite3'

@db = SQLite3::Database.open "Vehicles.db"

def welcome
    puts "\nWould you like to do?"
    puts "To Add -> Type (Add/add)"
    puts "To Update -> Select Number and Type (Update/update) ex: 3 Update"
    puts "To Delete -> Select Number and Type (Delete/delete) ex: 3 Delete"
    puts "To Exit -> Type (Exit/exit)\n"
    handleinput
end

def handleinput
    input = gets.chomp.downcase
    check = input.split(" ")
    if check.length == 2 && check[1] == "delete"
        delete(check[0])
    elsif check.length == 2 && check[1] == "update"
        update(check[0])
    else
        if input == "add"
           add
        elsif input == "exit"
            puts "Thank you for using Harmandeep DataBase application."
            #@db.close if @db
        else
            puts "Wrong Selection! Try Again"
            handleinput
        end
    end
end

def list
    puts "\nHere is the list of saved cars."
    stm = @db.prepare "SELECT * FROM cars"
    list = stm.execute
    list.each do |row|
        puts "#{row[0]}: #{row[1]} --> $#{row[2]} \s"
    end
    welcome
end

def add
    begin
        @db.execute "CREATE TABLE IF NOT EXISTS cars(
            id INTEGER PRIMARY KEY,
            name TEXT,
            price INTEGER
        )"
        puts "Enter position number for your car."
        nextposition = gets.chomp
        puts "Enter name of the car."
        name = gets.chomp.to_s
        puts "Enter cost of the car."
        cost = gets.chomp.to_i
        @db.execute "INSERT INTO cars VALUES(#{nextposition.to_i},'#{name}',#{cost})"
        list
    rescue SQLite3::Exception => e 
        puts "Exception occurred"
        puts e
    end
end

def update(position)
    selection = Integer(position) rescue false
    if selection == false
        puts "Wrong Selection!"
    else
        puts "Enter name of the car."
        name = gets.chomp
        puts "Enter cost of the car."
        cost = gets.chomp
        begin
            @db.execute "UPDATE cars SET name = '#{name.to_s}' WHERE id = #{position.to_i}"
            @db.execute "UPDATE cars SET price = #{cost.to_i} WHERE id = #{position.to_i}"
            list
        rescue SQLite3::Exception => e
            puts "Exception occured"
            puts e
        end
    end
end

def delete(position)
    selection = Integer(position) rescue false
    if selection == false
        puts "Wrong Selection!"
    else
        @db.execute "DELETE FROM cars WHERE id = #{selection}"
        list
    end
end

list

