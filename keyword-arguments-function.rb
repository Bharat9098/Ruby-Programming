def sayHello name: "Bharat", age: 26
	puts "Hello #{name} Your age is #{age}" 
end

# in this case if no parameter passed then default will be considered

p sayHello # output  -- > Hello Bharat Your age is 26


p sayHello name: "Rahul", age: 25 # output  -- > Hello Rahul Your age is 25
p sayHello age: 32, name: "Aman" # output  -- > Hello Aman Your age is 32

# ----------------------------------------------

# keyword argument no defaults

# in this case passing parameters with key and value is mandatory

def say_hello name:, age:
  puts "Hello #{name} your age is #{age}"
end

say_hello name: "john", age: 15
say_hello age: 56, name: "Tom"

# say_hello # uncomment it and try
# say_hello "Bruce lee", 32 # uncomment it and try
