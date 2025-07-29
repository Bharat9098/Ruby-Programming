array = [1, 1, 2, 3, nil]

def remove_duplicate_and_nil(array)
  result  = []
  array.each do |item|
  
    next if item.nil? || result.include?(item)

    result << item
  end

  result
end  

p remove_duplicate_and_nil([1,1,2,nil,2,3,4,3, nil, nil]).inspect
