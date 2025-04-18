def find_pairs(arr, target)
  arr.sort!
  left = 0
  right = arr.length - 1
  pairs = []

  while left < right
    sum = arr[left] + arr[right]

    if sum == target
      pairs << [arr[left], arr[right]]
      left += 1
      right -= 1
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end

  pairs
end

arr = [1, 1, 4, 3, 2, 5, 6, 7, 3]
target = 5
puts find_pairs(arr, target).inspect