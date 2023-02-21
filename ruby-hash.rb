hash1 = Hash.new
hash1['English'] = 50
hash1['Maths'] = 60
hash1['Hindi'] = 70

subject = gets.chop

puts "Marks in #{subject} is #{hash1[subject]}"

# -------------------------------------------------------------------

# hash default value

mark = Hash.new 0 # We specified default value of mark is zero
mark['English'] = 50
mark['Math'] = 70
mark['Science'] = 75

print "Enter subject name:"
sub = gets.chop
puts "Mark in #{sub} is #{mark[sub]}"


# --------------------------------------------------------------------

# looping in hashes

mark = Hash.new 0
mark['English'] = 100
mark['Maths'] = 80
mark['Hindi'] = 60
total = 0

mark.each do |key, value|
	total += value
end

puts "Total Marks are: #{total}"


# ----------------------------------------------------------------------

# hash printing with key value

hash2 = Hash.new 0
hash2['English'] = 40
hash2['Hinglish'] = 70
hash2['Maths'] = 90

puts "Key => Value"
hash2.each do |key, value|
	puts "#{key} => #{value}"
end

# -------------------------------------------------------------------------

# Another way of hash creation

marks = {maths: 75, science: 62, geogrophy: 55 }
puts "Key: Value"

marks.each do |key, value|
	puts "#{key}: #{value}"
end

# -------------------------------------------------------------------------
# with older syntax hashrocket =>

marks = {:maths => 75, :science => 62, :geogrophy => 55 }
puts "Key => Value"

marks.each do |key, value|
	puts "#{key} => #{value}"
end

# -------------------------------------------------------------------------

# multilne Hash creating using symbol

newhash = Hash.new 0
newhash[:computer] = 95 
newhash[:science] = 98

puts "Enter subject name"
getSubject = gets.chop.to_sym
puts "Marks in #{getSubject} is #{newhash[getSubject]}"

# -------------------------------------------------------------------------
