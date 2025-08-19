def third_smallest(arr)
  smallest = Float::INFINITY
  second_smallest = Float::INFINITY
  third_s = Float::INFINITY

  arr.each do |num|
    if num < smallest
      third_s = second_smallest
      second_smallest = smallest
      smallest = num
    elsif num < second_smallest
      third_s = second_smallest
      second_smallest = num
    elsif num < third_s
      third_s = num  
    end
  end
  third_s
end

arr = [5,3,5,6,2,1,7]
puts third_smallest(arr)