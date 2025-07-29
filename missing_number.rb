def findMissingNumber(number)
  missing_element = []
  
  number.each do |num|
    break if num == number.last
    unless number.include?(num.next)
      missing_element << num + 1
    end
  end

  missing_element
end

p findMissingNumber([1,2,4,5,6])
