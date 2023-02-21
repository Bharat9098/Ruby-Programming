5.times do |num|
  puts "Num = #{num}"
  puts "Do you want to redo? (y/n): "
  option = gets.chop
  redo if option == "y"
end

# when executes above program it asks for Do you want to redo? if we press y same number
# will be printed till we press y if we press n then it will go to next number and so on
# till 5 times because we running loop for 5 times.


# Num = 0
# Do you want to redo? (y/n): 
# y
# Num = 0
# Do you want to redo? (y/n): 
# y
# Num = 0
# Do you want to redo? (y/n): 
# y
# Num = 0
# Do you want to redo? (y/n): 
# y
# Num = 0
# Do you want to redo? (y/n): 
# n
# Num = 1
# Do you want to redo? (y/n): 
# n
# Num = 2
# Do you want to redo? (y/n): 
# n
# Num = 3
# Do you want to redo? (y/n): 
# y
# Num = 3
# Do you want to redo? (y/n): 
# y
# Num = 3
# Do you want to redo? (y/n): 
