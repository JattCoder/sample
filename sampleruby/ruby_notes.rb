#to check if sting is empty -- if word.empty?
#to check length -- word.length or word.size
#to choose folder in one line of code -- word.empty? ? itsempty : notempty
#to choose folder in one line of code with data -- word.empty? ? itsempty(name) : notempty(name)
#to add variable in string -- "Hello #{name}" --> "Hello Harmandeep Mand"
#loop in range from 1 to 10 -- for i in 1..10 do ..puts i.. end
#another way for looping -- 7.times do ..puts "Hello World".. end
#again checking in range from 1 to 10 -- if number.between?(1..10)
#in order to add object in array -- cars << "Tesla"
#another way to add element if it is even or matches -- cars << "Tesla" if "Tesla".include?("T")
#to check if list include -- cars.include?("Tesla")
#to get first item in list -- cars.first
#to get last item in list -- cars.last
#to check if the number is even and odd -- array.even? ... array.odd? ... array.any?
#to return new array of even or odd numbers -- [1,2,3].reject{|i| i.even?}
#to delete item -- cars.delete_at(3) or cars.delete("Tesla")
#to delete elements that equal to selected item -- cars.delete_if do |car| ...car == "Tesla"... end
#to add 2 different arrays without duplicate -- (cars + cars1).uniq
#to run something after actual any number of secs -- seconds.downto(0) do |seconds| ..... end
#for debugging at top --require 'pry' and add code after error or elsewhere -- binding.pry
#to build array from string -- (s,t,r,i,n,g).split(",") --> ("s","t","r","i","n","g")
#to get numbers split in one line code -- numarr = (1..10).to_a --> [1,2,3,4,5,6,7,8,9,10]
#to put array together -- ["a","b","c"].join --> abc
#to put array together with extra -- ["a","b","c"].join("z") --> azbzcz
#way to detect 1 element in entire arry and return it -- [1,2,3,4].detect{|i| i.even?} #2 found 1st element
..... [1,2,3,4].detect{|i| i.is_a?(String)} --> #nil because no string in it
#to make first letter capitalize -- string.capitalize --> String
#to check if num is prime -- require 'prime' ... Prime.prime?(4) --> #false
#to create new array -- newarray = Array.new or newarray = []
#to create new hash -- newhash = Hash.new or newarray = {}
#to create hash with objects and key -- newhash{"key" => "object","key2" => "object2"}
#to add object to created (newhash) hash -- newhash["key3"] = "object3"
#same hashkey will replace the object
#to save more data in hashes.. create array and save array with key in hashes
#to build hash profiles -- profiles {:Harmandeep => {"Name"=>"Harmandeep Mand","Age"=>"27","Spouse"=>"Robinpreet Kaur Mand"},:Robinpreet{"Name"=>"Robinpreet Kaur Mand","Age"=>"23","Spouse"=>"Harmandeep Singh Mand"}}
#to get direct keys or values from hashmap -- fruits.keys for keys and fruits.values
#to combile values from everykey -- fruits.values.flatten
#to fetch smallest key value -- fruits.values.flatten.min
#to remove space from the end -- "string ".rstrip --> "string"
#to check if string contains letters -- string !~ /\D/
#freeze string so no one can modify it -- "string".freeze
#to remove duplicates from array -- arr.uniq!
#to get user input -- val = gets.chomp
#for uppercase -- value.upcase
#for downcase -- value.downcase


#...........new class to write and read data.................
class Person
  #attr_reader :name
  #attr_writer :name
  #attr_accessor :name,:id
  #new way to save data in class using attr_reader or attr_writer
  #harman = Person.new
  #harman.name = "Harmandeep Mand"
  #harman.name --> #Harmandeep Mand
  def name=(personname)
    @name = personname
  end
  def name
    @name
  end
  def job=(personjob)
    @job = personjob
  end
  def job
    @job
  end
end
beyonce = Person.new
beyonce.name = "Beyonce"
beyonce.instance_variable_get(:@name)
beyonce.instance_variable_set(:@name,"Beyonce")
beyonce.name
beyonce.job = "Singer"
beyonce.instance_variable_get(:@job)
beyonce.instance_variable_set(:@job,"Singer")
beyonce.job
#...........new class to write and read data.................

#to fetch first or any letter an make changes -- abc = ["abc","def"] abc.map do |word| ...word[0]... end --> ["a","d"]

#........new class with (splitting sentence and counting words)

complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
class String
  def count_sentences
    scan(/[.!?]+(?=\s|\z)/).size
  end
end

puts complex_string.count_sentences

#........
