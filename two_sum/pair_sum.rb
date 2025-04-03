def pair_sum(arr, target)
  pairs = []
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      pairs << [arr[i], arr[j]] if arr[i] + arr[j] == target
    end
  end
  pairs
end

arr = [1,2,3,4,5]
target = 5
puts pair_sum(arr, target).inspect

# Output => [[1,4],[2,3]]