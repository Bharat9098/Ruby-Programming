# arr = [1,2,2,3,3,4,5,6]


# def remove_duplicate(arr)
# 	new_arr = []

# 	arr.each do |num|
# 		new_arr << num unless new_arr.include?(num)
# 	end

# 	new_arr
# end


# puts remove_duplicate(arr)


arr = [1,5,6,3,4,4,5]


def find_duplicate(arr)
	seen = []
	duplicates = []

	arr.each do |num|
		if seen.include?(num)
			duplicates << num unless duplicates.include?(num)
		else
			seen << num
		end
	end

	duplicates
end


puts find_duplicate(arr)