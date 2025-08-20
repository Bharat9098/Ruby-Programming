def fibonacci(n, a = 0, b = 1)
	return if n == 0
	puts "--#{a}-"
  	fibonacci(n-1, b, a+b) # recursive call
end

puts fibonacci(10)
