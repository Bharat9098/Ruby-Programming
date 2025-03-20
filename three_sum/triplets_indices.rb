def find_triplets_indices(arr, target)
  n = arr.length
  triplets = []

  (0...n-2).each do |i|
    (i+1...n-1).each do |j|
      (j+1...n).each do |k|
        if arr[i] + arr[j] + arr[k] == target
          triplets << [[i, j, k]]
        end
      end
    end
  end

  triplets
end

arr = [1, 1, 4, 3, 2, 5, 6, 7, 3]
target = 8
puts find_triplets_indices(arr, target).inspect