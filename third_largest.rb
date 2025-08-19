def third_largest(arr)
  largest = 0
  second_l = 0
  third_l = 0

  arr.each do |num|
    if num > largest
      third_l = second_l
      second_l = largest
      largest = num
    elsif num > second_l
      third_l = second_l
      second_l = largest  
    elsif num > third_l
      third_l = num
    end
  end
  third_l
end

arr = [6,7,2,3,5,9,13,6,7]
puts third_largest(arr)