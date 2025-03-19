def binary_search(arr, target)
  n = arr.length
  left = 0
  right = n-1

  mid = (left + right) / 2

  while(left <= right)
    if arr[mid] == target
      return mid
    elsif target > mid
      left = mid + 1
    else  
      right = mid -1
    end
    mid = (left + right) / 2
  end

  -1
end

arr = [4,6,7,8,9,10,45,67,89]
puts binary_search(arr, 75)
