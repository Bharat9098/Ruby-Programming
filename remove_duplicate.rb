def remove_duplicate(arr)
  new_arr = []

  arr.each do |element|
    new_arr << element unless new_arr.include?(element)
  end
  new_arr
end

arr = [7,2,3,1,7,7,7,6,3,4]
puts remove_duplicate(arr)
