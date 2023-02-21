def someArray array
	array.push(7) 
	array << 8 
end

my_array = [1,2,3,4,5,6]

p my_array # output --> [1, 2, 3, 4, 5, 6]
someArray my_array # output  --> [1, 2, 3, 4, 5, 6, 7, 8]
p my_array

# --------------------------------------------------------------

# if we want array should not change when passing array to function
# we can try this way

def arrayChanger newArray
	newArray.push(6)
end

newArray = [1,2,3,4]
p newArray # output [1, 2, 3, 4]
arrayChanger Marshal.load(Marshal.dump(newArray))
p newArray # output [1, 2, 3, 4]

# --------------------------------------------------------------


