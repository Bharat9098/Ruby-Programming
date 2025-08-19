def rotate_by_1_left(arr)
  store = arr[0]
  len = arr.length
  new_arr = []
   arr[1..-1].each do |element|
    new_arr << element
  end

  new_arr << store

  puts new_arr
end

arr = [1,2,3,4,5]
rotate_by_1_left(arr)
