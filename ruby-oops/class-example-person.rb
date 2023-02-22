class Person
	attr_accessor :age
end

person = Person.new
person.age = gets().to_i
puts "age of a person is #{person.age}"
