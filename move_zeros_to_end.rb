arr = [1,0,1,0,1,0,1,0,1,1,0,1]

def move_zeros_to_end(arr)
  zero_arr = []
  one_arr = []
  arr.each do |element|
    if element == 1
      one_arr << element
    else
      zero_arr << element
    end
  end
  one_arr + zero_arr
end

puts move_zeros_to_end(arr)
