def find_pairs_with_indices(arr, target)
  # Store value + original index
  indexed_arr = arr.map.with_index { |val, idx| [val, idx] }
  indexed_arr.sort_by!(&:first)  # sort by value

  left = 0
  right = indexed_arr.length - 1
  pairs = []

  while left < right
    sum = indexed_arr[left][0] + indexed_arr[right][0]

    if sum == target
      # store original indices
      pairs << [indexed_arr[left][1], indexed_arr[right][1]]
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

arr = [1,2,3,4,5]
target = 5
puts find_pairs_with_indices(arr, target).inspect