def printingSomething(string)
	puts string
end

def myFunction(...)
	puts "this is My Function"
	printingSomething(...)
	puts "this is My Function"
end

myFunction("forwarding argument example.................")

# doesn't work in older ruby versions

# output
# "this is My Function"
# "forwarding argument example................."
# "this is My Function"