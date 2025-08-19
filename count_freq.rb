def count_frequency(arr)
  freq = Hash.new(0)

  arr.each do|num|
    freq[num] += 1
  end

  freq
end

arr = [1,2,3,2,1,4,1,5,1,16,4]
puts count_frequency(arr)
