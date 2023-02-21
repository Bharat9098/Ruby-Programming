(1..5).each {|a| print "#{a}, " }

# Prints -> 1, 2, 3, 4, 5, => 1..5

# ---------------------------------------------------------

("bad".."bag").each {|a| print "#{a}, " }

# Prints -> bad, bae, baf, bag, => "bad".."bag"

# ---------------------------------------------------------

a = -4..10
puts a.class # output  Range Object

# ---------------------------------------------------------

# Ranges in Grading system

puts "Marks Grading System"
puts "Enter Marks: "
marks = gets().chop.to_i

grade = case marks
  when 80..100
    'A'
  when 60..80
    'B'
  when 40..60
    'C'
  else
    'Try again.'
end

puts "Your grade is #{grade}"

# ---------------------------------------------------------


# Checking Intervals

print "Enter any letter: "
letter = gets.chop.to_s

puts "You have entered a lower case letter" if ('a' .. 'z') === letter
puts "You have entered a upper case letter" if ('A' .. 'Z') === letter


# ---------------------------------------------------------

# using triple dots skips the last number

p (1...5).to_a # [1, 2, 3, 4]

# ---------------------------------------------------------

# Begin and Endless Ranges

print "Enter your age: "
age = gets.to_i

case age
when 0..18
  puts "You can't vote"
when (19..)
  puts "You can vote"
end

