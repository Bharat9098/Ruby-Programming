def rotate_right_by_1(arr)
  store = arr[-1]
  new_arr = [store]
   arr[0..-2].each do |element|
    new_arr << element
  end

  puts new_arr
end

arr = [1,2,3,4,5]
rotate_right_by_1(arr)
