def someFunction a, *others
	puts a 
	puts "Other are: "
	for x in others
		puts x
	end
end

# if we don't know number of inputs given by user then we can use this
# here 1 will be forwarded to a argument in someFunction and rest 2, 3, 4, 5
# will be handled by *others 
# it is also called a splat operator
# whenever we don't want to specify number of argument then we can use this

someFunction 1, 2, 3, 4, 5


# output

# 1
# Other are: 
# 2
# 3
# 4
# 5

