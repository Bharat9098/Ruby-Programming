a = "bharat"

freq = Hash.new(0)

a.each_char do |ch|
  freq[ch] += 1
end

puts freq # {"b" => 1, "h" => 1, "a" => 2, "r" => 1, "t" => 1}

-------------------------------------

count = Hash.new(0)

"bharat".each_char do |char|
  count[char] += 1
end

count.each do |a, v|
  puts "#{a} : #{v}" # => {"b" => 1, "h" => 1, "a" => 2, "r" => 1, "t" => 1}
end

-------------------------------------

arr = ["a","b","a","c","b","a"]
freq_hash = Hash.new(0)
arr.each { |x| freq_hash[x] += 1 }
puts freq_hash.inspect
# Output => {"a"=>3, "b"=>2, "c"=>1}
-------------------------------------