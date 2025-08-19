# Find element occurs once (others twice)  # unique element

def unique_element(arr)
  unique = 0

  arr.each do |element|
    unique = unique ^ element
  end

  unique
end

arr = [1,2,2,1,3,4,4]
puts unique_element(arr)
