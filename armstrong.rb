def armstrong?(num)
  original = num
  count = 0
  temp = num

  while(temp > 0)
    count += 1
    temp = temp / 10
  end

  temp = num
  sum = 0

  while temp > 0
    digit = temp % 10
    sum += digit ** count
    temp /= 10
  end

  return sum == original
end

puts armstrong?(153)    # true
puts armstrong?(9474)   # true
puts armstrong?(123)    # false
