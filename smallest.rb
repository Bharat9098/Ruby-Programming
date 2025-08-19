def smallest(arr)
  minimum = arr[0]

  arr.each do |num|
    minimum = num if num < minimum
  end
  minimum
end

arr = [ 5,3,5,6,2,1,7]
puts  smallest(arr)