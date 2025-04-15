# pairs of given target bruteforce

def find_pairs(arr, target)
  pairs = []
  n = arr.length

  (0...n-1).each do |i|
    (i + 1...n).each do |j|
      if arr[i] + arr[j] == target
        pairs << [arr[i], arr[j]]
      end
    end
  end
  pairs
end

target = 5
arr = [1,1,4,3,2,5,6,7,3]
puts find_pairs(arr, target).inspect
