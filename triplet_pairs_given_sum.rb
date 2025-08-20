def find_triplets_optimized(arr, target)
  arr.sort!
  n = arr.length
  triplets = []

  (0...n-2).each do |i|
    puts "...........................#{i+1}"
    left = i + 1
    right = n - 1
    puts "+++++++++++++++++++++++#{n-1}"

    while left < right
      sum = arr[i] + arr[left] + arr[right]

      if sum == target
        triplets << [arr[i], arr[left], arr[right]]
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

arr = [1,1,4,3,2,5,6,7,3]
target = 5
puts find_triplets_optimized(arr, target).inspect
