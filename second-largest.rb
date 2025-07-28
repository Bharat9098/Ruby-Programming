def find_second_largest(arr)
  largest = arr[0]
  second_largest = nil

  arr.each do |num|
    if num > largest
      second_largest = largest
      largest = num
    end
  end

  second_largest
end

arr = [5, 10, 3, 6, 8]
puts find_second_largest(arr)
