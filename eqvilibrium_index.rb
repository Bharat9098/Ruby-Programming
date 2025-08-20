def equilibrium_index(arr)
  total = arr.sum
  left_sum = 0

  arr.each_with_index do |num, idx|
    right_sum = total - left_sum - num
    return idx if left_sum == right_sum
    left_sum += num
  end

  -1  # if no equilibrium index
end

arr = [1,2,3,5,4,2]
eqvilibrium_index(arr)
