arr = [1,0,1,0,1,0,1,0,1,1,0,1]

def seprate_zeros_and_ones(arr)
  zero_arr = []
  one_arr = []
  arr.each do |element|
    if element == 1
      one_arr << element
    else
      zero_arr << element
    end
  end

  zero_arr.each do |element|
    puts element.inspect
  end

  one_arr.each do |element|
    puts element.inspect
  end
end

seprate_zeros_and_ones(arr)
