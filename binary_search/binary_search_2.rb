# when target not present


def binary_search(arr, target)
  n = arr.length
  left = 0
  right = n - 1
  ans = -1   # default if nothing found

  while left <= right
    mid = (left + right) / 2

    if arr[mid] == target
      return arr[mid]   # exact match
    elsif arr[mid] < target
      left = mid + 1
    else
      ans = arr[mid]   # possible next greater
      right = mid - 1
    end
  end

  ans   # if not found, returns next greater OR -1 if not exists
end

arr = [4,6,7,8,9,10,45,67,89]
puts binary_search(arr, 75)   # 👉 should return 89
puts binary_search(arr, 5)    # 👉 should return 6
puts binary_search(arr, 100)  # 👉 should return -1