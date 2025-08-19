def largest(arr)
  maximum_e = arr[0]

  arr.each do |element|
    if element > maximum_e
      maximum_e = element
    end
  end
  maximum_e
end

arr = [4,3,2,7,45,6,7,48]
puts largest(arr)