def factorial num
	fact = 1
	1.upto(num) {|a|
		fact = fact * a
	}
	fact
end

number = 5

puts "factorial of #{number} is #{factorial(number)}"

# -------------------------------------------------------

def factorial num
  return 1 if num == 1
  return num * factorial(num-1)
end

number = 3

puts "Factorial of #{number} = #{factorial number}"

