# optimized approach

def find_triplets_with_indices(arr, target)
  n = arr.length
  indexed_arr = arr.each_with_index.map { |val, idx| [val, idx] } # value + original index
  indexed_arr.sort_by! { |x| x[0] }

  triplets = []

  (0...n-2).each do |i|
    left = i + 1
    right = n - 1

    while left < right
      sum = indexed_arr[i][0] + indexed_arr[left][0] + indexed_arr[right][0]

      if sum == target
        triplets << [
          [indexed_arr[i][1], indexed_arr[left][1], indexed_arr[right][1]], # indices
          # [indexed_arr[i][0], indexed_arr[left][0], indexed_arr[right][0]]  # values
        ]

        # return triplets if triplets.size == 2
        left += 1
        right -= 1
      elsif sum < target
        left += 1
      else
        right -= 1
      end
    end
  end

  triplets
end

arr = [1, 1, 4, 3, 2, 5, 6, 7, 3]
target = 8
puts find_triplets_with_indices(arr, target).inspect
