

again_array = Array.new
again_array.push("new BK")
again_array.push("new JK")
again_array.push("new NK")
again_array.push("new AK")

puts "----------------------"
for element in again_array 
  puts element
end

puts "----------------------"
countries = []

countries << "India"
countries << "Brazil"
countries << "USA"
countries << "Indore"

puts "----------------------"
puts countries.size
puts "----------------------"
puts countries.length
puts "----------------------"
puts countries.count

puts "----------------------"
puts countries[0]
puts "----------------------"
puts countries[1]
puts "----------------------"
puts countries[1..2]


countries.insert(1, "Bhopal")
puts "----------------------"
puts countries

p countries.include? "Bhopal"
countries.delete "Bhopal"
p countries
countries.delete_at 1
p countries

nums = [1,2,3,-4, -5, 6]
puts nums.reject(&:negative?).min()


# Ruby code for dig() method

# declaring array
a = [18, 22, 33, 23, 5, 6]

# declaring array
b = [[1, 4], [ 1, 1, 88, 9]]

# dig
puts "dig : #{a.dig(1)}\n\n" # 22

# dig
puts "dig : #{b.dig(0, 1)}\n\n" # 4

# dig
puts "dig : #{b.dig(1, 2)}\n\n" # 88

array = [1, 5, [7, 9, 11, ["Treasure"], "Sigma"]]

p array.dig(2,  3, 0) # treasure

array = [1, 5, [7, 9, 11, ["Treasure"], "Sigma"]]

p array.dig(2,  3) # ["Treasure"]

# set and union

volleyball = ["Ashok", "Chavan", "Karthik", "Jesus", "Budha"]

cricket = ["Budha", "Karthik", "Ragu", "Ram"]

p volleyball & cricket
p volleyball | cricket


["Karthik", "Budha"]
["Ashok", "Chavan", "Karthik", "Jesus", "Budha", "Ragu", "Ram"]

