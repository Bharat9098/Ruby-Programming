arr = [1,2,4,5,6]

def array_sorted_or_not?(arr)
	flag = true
	arr.each do |number|
		break if number == arr.last
		unless arr.include?(number.next)
			flag = false
		end
	end
	flag
end

puts array_sorted_or_not?(arr)