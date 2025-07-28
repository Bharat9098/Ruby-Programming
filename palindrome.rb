def is_palindrome?(input)
  left = 0
  right = input.length - 1
  while left < right
    return false if input[left] != input[right]

    left +=1
    right -=1
  end
  true
end

puts "#{is_palindrome?("som")}"
