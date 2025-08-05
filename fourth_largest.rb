arr = [3,7,2,8,34,25,76,83,97]

n = arr.length

first_largest = 0
second_largest = 0
third_largest = 0
fourth_largest = 0

n.times do |i|
	if(arr[i] > first_largest)
		fourth_largest = xthird_largest
		third_largest = second_largest
		second_largest = first_largest
		first_largest = arr[i]
	elsif (arr[i] > second_largest)
		fourth_largest = third_largest
		third_largest = second_largest
		second_largest = arr[i]
	elsif (arr[i] > third_largest)
		fourth_largest = third_largest 
		third_largest = arr[i]
	elsif (arr[i] > fourth_largest)
		fourth_largest = arr[i]
	end
end


puts "4 th largest is #{fourth_largest}"
puts "3 rd largest is #{third_largest}"
puts "2nd largest is #{second_largest}"
puts "1st largest is #{first_largest}"

