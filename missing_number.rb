def missing_number(arr)
  missing = []
  arr.each do |element|
    break if element == arr.last
    unless arr.include?(element.next)
      missing << element + 1
    end
  end

  missing
end

arr = [1,2,4,5,6,7]
puts missing_number(arr)
