def second_smallest(arr)
  smallest = Float::INFINITY
  second_smallest = Float::INFINITY

  arr.each do |num|
    if num < smallest
      second_smallest = smallest
      smallest = num
    elsif num < second_smallest
      second_smallest = num
    end
  end
  second_smallest
end

arr = [ 5,3,5,6,2,1,7]
puts second_smallest(arr)