def most_frequent_element(arr)
  frequency = {}

  arr.each do |num|
    if frequency[num]
      frequency[num] += 1
    else
      frequency[num] = 1
    end
  end

  max_count = 0
  most_frequent = nil

  frequency.each do |key, value|
    if value > max_count
      max_count = value
      most_frequent = key
    end
  end

  most_frequent
end

arr = [1, 2, 2, 3, 3, 3, 4, 4]
puts most_frequent_element(arr)
