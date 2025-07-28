def factorial(input)
  fact = 1
  while(input>1)
    fact = input*fact
    input -=1
  end
  return fact
end

puts "#{factorial(5)}"