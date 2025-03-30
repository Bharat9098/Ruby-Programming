def count_words(str)
	arr = str.split(" ")
	count = 0

	arr.each do |element|
		count += 1
	end

	count
end

str = "my name is tushar dhakad"
puts count_words(str) # 5

-------------------------------------------------

def count_characters(str)
	new_str = str.gsub(" ", "")
	new_str1 = new_str.gsub("", ",")
    a = new_str1.split(",").reject{|e| e.nil? || (e.is_a?(String) && e.strip.empty?) }

	count = 0
	a.each do |element|
		count += 1
	end
	count
end

str = "my name is tushar dhakad"
puts count_characters(str) # 20

-------------------------------------------------