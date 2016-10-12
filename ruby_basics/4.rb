# Create a class called Employee.
# Define four other classes i.e ceo, president, staff and security which should have all the properties of Person.
# Define a method which introduces the Employee with his Employee_id, firstname, lastname, age, city and state.

class Person
   def initialize(first, last, age, state, city)
        @first_name = first
        @last_name = last
        @age = age
        @state=state
        @city=city
   end
end

class Ceo < Person
   def introduce
         puts "Hello teacher. My name is #{@first_name} #{@last_name}. #{@age} #{@city} #{@state}"
   end
end

class President < Person
   def introduce
         puts "Hello class. My name is #{@first_name} #{@last_name}. #{@age} #{@city} #{@state}"
   end
end

class Staff < Person     
   def introduce           
       puts "Hi. I'm one of the parents. My name is #{@first_name} #{@last_name} #{@age} #{@state} #{@city}."     
   end 
end

class Security < Person     
   def introduce           
       puts "Hi. I'm one of the parents. My name is #{@first_name} #{@last_name} #{@age} #{@state} #{@city}."     
   end 
end

john = Ceo.new("John", "Doe", 18,"mys","karnataka") 
john.introduce   #=> Hello guys. My name is John Doe.
lucy= President.new("lucy","diaz",33,"canada","usa")
lucy.introduce #=>Hello sir/madam.My name is lucy Diaz.
gayathri= Staff.new("gayathri","lokesh",55,"mysore","karnataka")
gayathri.introduce #=>Hi.My name is gayathri lokesh.
g= Security.new("gayathri","lokesh",55,"mysore","karnataka")
g.introduce #=>Hi.My name is gayathri lokesh.
	