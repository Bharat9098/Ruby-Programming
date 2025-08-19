def rotate_left_by_k(arr, k)
  len = arr.length
  k = k % len

  new_arr = []
  for i in (len-k)...len
    new_arr << arr[i]
  end

  for i in 0...(len-k)
    new_arr << arr[i]
  end

  puts new_arr
end

arr = [1,2,3,4,5]
k = 3
rotate_left_by_k(arr, k)
