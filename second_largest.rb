def second_largest(arr)
  largest = 0
  second_l = 0

  arr.each do |num|
    if num > largest
      second_l = largest
      largest = num
    elsif num > second_l
      second_l = num
    end
  end
  second_l
end

arr = [6,7,2,3,5,9,13,6,7]
puts second_largest(arr)