def total_occurrences(arr, target)
  first, last = -1, -1
  left, right = 0, arr.length - 1

  while left <= right
    mid = (left + right) / 2

    if arr[mid] == target
      # update first & last
      first = mid if first == -1 || mid < first
      last  = mid if last == -1  || mid > last

      # dono side check karna hoga
      # pehle left side dekho
      temp = mid - 1
      while temp >= 0 && arr[temp] == target
        first = temp
        temp -= 1
      end

      # ab right side dekho
      temp = mid + 1
      while temp < arr.length && arr[temp] == target
        last = temp
        temp += 1
      end

      break
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return 0 if first == -1
  last - first + 1
end

# Example
arr = [1, 2, 2, 2, 3, 4, 5]
target = 2
puts total_occurrences(arr, target)  # Output: 3
