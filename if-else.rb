# .chop  -> returns a new string with the last character removed can be \n, \r

puts "What is your name"
name = gets().chop
puts "#{name} is idiot" if name != "Zigor"


puts "What is your name"
name = gets().chop

if name == "Zigor"
  puts "#{name} is idiot"
else
  puts "#{name} is genius"
end