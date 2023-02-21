#An Array is an ordered, integer-indexed collection of objects, called elements. Any object may be an Array element.

#Array indexing starts at 0, as in C or Java.

# A positive index is an offset from the first element:

#Index 0 indicates the first element.

#Index 1 indicates the second element.

# A negative index is an offset, backwards, from the end of the array:

# Index -1 indicates the last element.

# Index -2 indicates the next-to-last element.

puts "-------------------------Method 1-----------------------------------------"

my_array = []
my_array << "Something"
my_array << 123
my_array.push("bharat")
my_array << Time.now

my_array.pop() # pops or deletes last values from array in this case Time.now will be removed from array

my_array.each do |element|
  puts element
end

# prints new array  ["Something", 123, "bharat"]

puts "-------------------------Method 2-----------------------------------------"

my_array1 = ["Something1", 12345, Time.now]

puts my_array1.join("\n")


# Output joins in form of string

# Something1
# 12345
# 2023-02-21 15:55:19 +0530

puts "-------------------------Method 3-----------------------------------------"

my_array123 = Array.new()
my_array123.push("something something")
my_array123.push("again something")

puts my_array123.join("\n")

# Output 

# something something
# again something

puts "-------------------------Method 4-----------------------------------------"

abc = (1..5).to_a
print abc.join("\n")


# Output 

# 1
# 2
# 3
# 4
# 5

puts "-------------------------Method 5-----------------------------------------"

again_array = Array.new
again_array.push("new BK")
again_array.push("new JK")
again_array.push("new NK")
again_array.push("new AK")

for element in again_array 
  puts element
end

# Output

# ["new BK", "new JK", "new NK", "new AK"]

