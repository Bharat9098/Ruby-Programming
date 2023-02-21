def someFunction first_arg, others_as_hash
	puts "Our first argument is #{first_arg}"
	puts "Others are: "
	p others_as_hash
end

someFunction "Bharat", {ruby: 1, c: 2, python: 3}


# output

# Our first argument is Bharat
# Others are: 
# {:ruby=>1, :c=>2, :python=>3}
