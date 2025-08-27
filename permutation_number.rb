def permutations(str)
  return [str] if str.length <= 1

  result = []
  str.chars.each_with_index do |ch, i|
    # i-th character ko fix karo
    remaining = str[0...i] + str[i+1..-1]  

    # baaki ka permutation
    permutations(remaining).each do |perm|
      result << ch + perm
    end
  end
  result
end

# Number ko string bana ke bhejo
num = 123
perms = permutations(num.to_s)

# agar number me chahiye to wapas integer me convert kar lo
perms_as_numbers = perms.map(&:to_i)

puts perms_as_numbers.inspect
