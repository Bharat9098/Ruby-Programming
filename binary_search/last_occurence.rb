def last_occurence(arr, target)
	new_arr = arr.sort
	n = new_arr.length

	left = 0
	right = n -1

	mid = (left + right) / 2

	while(left <= right)
		# store wala
		if(new_arr[mid] == target)
			store  = mid
			left = mid + 1
		elsif(target > new_arr[mid])
			left = mid + 1
		elsif(target < new_arr[mid])
			right = mid -1
		end
		mid = (left + right) / 2 
	end
	return store
end

arr = [4,5,1,2,5,3,2,2,3]

puts last_occurence(arr, 2)
