def flatten_array(arr)
  result = []
  arr.each do |elem|
    if elem.is_a?(Array)
      result += flatten_array(elem)
    else
      result << elem
    end
  end
  result
end

a = [1, 2, 3, [4, 5, [7, 8, [10, 12]]]]
p flatten_array(a)
