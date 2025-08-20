arr = [10, 20, 30, 40, 50, 60]

left = 0
right = arr.length - 1

while left <= right
  puts arr[left]
  puts arr[right]
  left += 1
  right -= 1
end
