# there are multiple loops in ruby we can use according to our requirement 
# below are the example of loops in ruby

# ------------------------------------------------------

# instead of writing puts 10 times we can use loops

puts 10
p 9 # p is a short form for puts
p 8
p 7 # etc..... 

# ------------------------------------------------------


# Count down starts
10.downto 1 do |num|
  p num
end

puts 10
p 9 # p is a short form for puts
p 8
p 7 # etc..... till 1

# ------------------------------------------------------


7.times{
  puts "I know something"
}

# prints 7 times "I know something"

# ------------------------------------------------------


7.times{ |a|
  puts "#{a}. I know something"
}

# prints 7 times "I know something" with index 0 to 6

# ------------------------------------------------------

17.upto 23 do |i|
  print "#{i}, "
end

# prints 17, 18, 19, 20, 21, 22, 23

# ------------------------------------------------------

1.step 10 do |i|
  print "#{i}, "
end

# Prints 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

# ------------------------------------------------------

10.step 1, -1 do |i|
  print "#{i}, "
end

# prints 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, => 10

# ------------------------------------------------------

p "Even numbers between 10 and 1:"

10.step 1, -2 do |i|
  print "#{i}, "
end

# Prints 10, 8, 6, 4, 2

# ------------------------------------------------------

p "Even numbers between 1 and 10:"

2.step 10, 2 do |i|
  print "#{i}, "
end

# Prints 2, 4, 6, 8, 10

# ------------------------------------------------------

i=1
until i > 10 do
  print "#{i}, "
  i+=1
end

# Prints 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

# ------------------------------------------------------


1.upto 10 do |i|
  break if i == 6
  print "#{i}, "
end

# Prints 1, 2, 3, 4, 5 when i is == 6 loop will break

# --------------------------------------------------------------------------------------

10.times do |num|
  next if num == 6
  print "#{num}, "
end

# skips 6 and prints remaining numbers from 1 to 10

# Prints 0, 1, 2, 3, 4, 5, 7, 8, 9

# --------------------------------------------------------------------------------------

# this is infinite loop  this will print string "I Love Ruby" until we press CTRl + c command

loop do
  puts "I Love Ruby"
end


# -------------------------------------------------------------------------------------- 

1.upto 10 do |i|
  if (i == 5) .. (i == 8)
  print "#{i}, "
  end
end

# Prints 5,6,7,8
