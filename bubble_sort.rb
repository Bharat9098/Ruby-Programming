def bubble_sort(arr)
  n = arr.length

  (n - 1).times do
    (0...(n - 1)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end

  arr
end

puts bubble_sort([5, 1, 4, 2, 8]).inspect
