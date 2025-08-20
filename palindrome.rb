def is_palindrome?(a)
  original = a
  reversed = 0

  while(a > 0)
    digit  = a % 10
    reversed = reversed * 10 + digit

    a = a / 10
  end

  return original == reversed
end

a = 121
puts is_palindrome?(a)
