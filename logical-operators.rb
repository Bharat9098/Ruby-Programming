# logical operators in ruby

# p is short form of puts

p 1 == 1 # true
p 1 == 2 # false
p 1 != 2 # true
p 1 != 1 # false
p 2 > 3 # false
p 2 >= 3 # false
p 2 < 3 # true
p 2 <= 3 # true

p true == true # true
p true == "true" # false
p String == "abc" # false
p String === "abc" # true
p Integer === 1 # true
p "abc" === String # false
