def sum_of_digits(n)
  sum = 0
  n.to_s.chars.each do |char|
    sum += char.to_i
  end
  sum
end

p sum_of_digits(12311) == 7 ? true : false
