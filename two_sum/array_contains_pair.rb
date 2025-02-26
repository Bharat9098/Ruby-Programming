def has_pair_sum?(arr, k)
  seen = {}
  arr.each do |num|
    return true if seen[k - num]
    seen[num] = true
  end
  false
end

arr = [1,2,3,9]
puts has_pair_sum?(arr, 8)  # false
puts has_pair_sum?(arr, 5)  # true
