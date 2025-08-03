def pyramid(n)
  puts "Pyramid135Pattern"
  n.times do |i|
    print ' ' * (n - i)
    print '*' * (2 * i + 1)
    puts
  end
end

# ✅ inverted_pyramid

def inverted_pyramid(n)
  n.times do |i|
    print ' ' * i
    print '* ' * (n - i)
    puts
  end
end

# ✅ right_angle_triangle

def right_angle_triangle(n)
  n.times do |i|
    (n - i).times do |j|
      if i == 0 || i == n - 1 || j == 0 || (i + j == n - 1)
        print '*'
      else
        print ' '
      end
    end
    puts
  end
end

# ✅ counting_triangle

def counting_triangle(n)
  5.times do |i|
    (i + 1).times do |j|
      print j + 1
    end
    puts
  end
end

# ✅ counting_triangle1

def counting_triangle1(n)
  count = 0
  n.times do |i|
    (i + 1).times do
      print " #{count}"
      count += 1
    end
    puts
  end
end

# ✅ right_angle_counting_triangle

def right_angle_counting_triangle(n)
  n.times do |i|
    (n - i).times do |j|
      print j + 1
    end
    puts
  end
end

# ✅ mix_pyramid

def mix_pyramid(n)
  # Top part
  n.times do |i|
    print '*' * (n - i)
    print ' ' * (2 * (i + 1) - 1)
    print '*' * (n - i)
    puts
  end

  # Bottom part
  n.times do |i|
    print '*' * (i + 1)
    print ' ' * (2 * (n - i) - 1)
    print '*' * (i + 1)
    puts
  end
end

# ✅ fancy_12_pattern

def fancy_12_pattern(n)
  n.times do |i|
    (i + 1).times do
      print "#{i + 1}*"
    end
    puts
  end
end

# ✅ full_fancy_pattern

def full_fancy_pattern(n)
  fancy_12_pattern(n)
  n -= 1
  n.times do |i|
    (2 * (n - i) - 1).times do |j|
      if j.even?
        print n - i
      else
        print "*"
      end
    end
    puts
  end
end

# ✅ alphabet_pattern

def alphabet_pattern(n)
  n.times do |i|
    ch = 'A'.ord
    (0..i).each do
      print ch.chr
      ch += 1
    end
    ch -= 2
    while ch >= 'A'.ord
      print ch.chr
      ch -= 1
    end
    puts
  end
end

# ✅ one_two_three

def one_two_three(n)
  i = 1
  while i <= n
    j = 1
    while j <= n
      print j
      j += 1
    end
    puts
    i += 1
  end
end

# ✅ three_two_one

def three_two_one(n)
  i = 1
  while i <= n
    j = 1
    while j <= n
      print n - j + 1
      j += 1
    end
    puts
    i += 1
  end
end

# ✅ count_one_two_three

def count_one_two_three(n)
  count = 1
  n.times do
    n.times do
      print count
      count += 1
    end
    puts
  end
end

# ✅ count_one_two_but_three_again

def count_one_two_but_three_again(n)
  count = 1
  (1..n).each do |i|
    (1..i).each do
      print count
      count += 1
    end
    puts
    count -= 1
  end
end

# ✅ ulti_ginti_pyramid

def ulti_ginti_pyramid(n)
  (1..n).each do |i|
    (1..i).each do |j|
      print i - j + 1
    end
    puts
  end
end
# ✅ three_alphabet_repeat

def three_alphabet_repeat(n)
  n.times do
    ch = 'A'
    n.times do
      print ch
      ch = ch.next
    end
    puts
  end
end
# ✅ alphabet_seq

def alphabet_seq(n)
  ch = 'A'
  n.times do
    n.times do
      print ch
      ch = ch.next
    end
    puts
  end
end
# ✅ alphabet_seq_but_two_minus

def alphabet_seq_but_two_minus(n)
  ch = 'A'
  n.times do
    n.times do
      print ch
      ch = ch.next
    end
    ch = (ch.ord - 2).chr
    puts
  end
end
# ✅ alphabet_triangle_a_to_z

def alphabet_triangle_a_to_z(n)
  ch = 'A'
  n.times do |i|
    (0..i).each do
      print ch
      ch = ch.next
    end
    puts
  end
end
# ✅ more_pattern

def more_pattern(n)
  n.times do |i|
    ch = ('D'.ord - i).chr
    (0..i).each do
      print ch
      ch = ch.next
    end
    puts
  end
end
# ✅ more_pattern1

def more_pattern1(n)
  n.times do |i|
    print ' ' * (n - i)
    print '*' * (i + 1)
    puts
  end
end
# ✅ more_pattern2

def more_pattern2(n)
  n.times do |i|
    print '*' * (n - i)
    puts
  end
end
# ✅ more_pattern3

def more_pattern3(n)
  n.times do |i|
    print ' ' * (i + 1)
    print '*' * (n - i)
    puts
  end
end
# ✅ more_pattern4

def more_pattern4(n)
  n.times do |i|
    print ' ' * (i + 1)
    print (i + 1).to_s * (n - i)
    puts
  end
end
# ✅ more_pattern5

def more_pattern5(n)
  n.times do |i|
    print ' ' * (n - i - 1)
    print (i + 1).to_s * (i + 1)
    puts
  end
end
# ✅ more_pattern6

def more_pattern6(n)
  n.times do |i|
    print ' ' * (i + 1)
    count = 1
    (n - i).times do
      print count + i
      count += 1
    end
    puts
  end
end
# ✅ more_pattern7

def more_pattern7(n)
  count = 1
  n.times do |i|
    print ' ' * (n - i - 1)
    (i + 1).times do
      print count
      count += 1
    end
    puts
  end
end
# ✅ palindrom_equilateral_pyramid

def palindrom_equilateral_pyramid(n)
  n.times do |i|
    print ' ' * (n - i)
    count = 1
    count1 = i
    (i + 1).times do
      print count
      count += 1
    end
    i.times do
      print count1
      count1 -= 1
    end
    puts
  end
end
# ✅ dabang_pattern

def dabang_pattern(n)
  n.times do |i|
    (1..(n - i + 1)).each { |j| print j }
    print ' ' * (2 * i)
    (n - i).downto(1) { |j| print j }
    puts
  end
end
# ✅ more_pattern9

def more_pattern9(n)
  n.times do |i|
    (i + 1).times { print " *" }
    print ' ' * (n - i)
    puts
  end
end
# ✅ lakhan_pyramid_123_pattern

def lakhan_pyramid_123_pattern(n)
  n.times do |i|
    print ' ' * (n - i)
    print '*' * (i + 1)
    puts
  end
end

# ✅ lakhan_pyramid_1357_pattern

def lakhan_pyramid_1357_pattern(n)
  n.times do |i|
    print ' ' * (n - i)
    print '*' * (2 * i + 1)
    puts
  end
end


# 1. Ulta Hollow Pyramid

def ulta_hollow_pyramid(n)
  n.times do |i|
    print ' ' * i
    (n - i).times do |k|
      if k == 0 || k == n - i - 1 || i == 0 || i == n - 1
        print '* '
      else
        print '  '
      end
    end
    puts
  end
end
# 2. Sidha Hollow Pyramid

def sidha_hollow_pyramid(n)
  n.times do |i|
    print ' ' * (n - i)
    (i + 1).times do |k|
      if k == 0 || k == n - 1 || i == 0 || i == n - 1 || i == k
        print '* '
      else
        print '  '
      end
    end
    puts
  end
end
# 3. Butterfly Pattern

def butterfly_pattern(n)
  n.times do |i|
    print '*' * (i + 1)
    print '  ' * (n - i - 1)
    print '*' * (i + 1)
    puts
  end

  n.times do |i|
    print '*' * (n - i - 1)
    print ' ' * (2 * i + 2)
    print '*' * (n - i - 1)
    puts
  end
end
# 4. Numeric Hollow Half Pyramid

def numeric_hollow_half_pyramid(n)
  n.times do |i|
    count = 1
    (i + 1).times do |j|
      if i == 0 || i == n - 1 || j == 0 || j == i
        print " #{i + 1}" if i == j
        print " #{count}" unless i == j
        count += 1
      else
        print '  '
      end
    end
    puts
  end
end
# 5. Numeric Inverted Hollow Half Pyramid

def numeric_inverted_hollow_half_pyramid(n)
  n.times do |i|
    count = 1
    (n - i).times do |j|
      if i == 0 || j == 0
        print count + i
        count += 1
      elsif i + j == n - 1
        print n
      else
        print ' '
      end
    end
    puts
  end
end
# 6. Fancy Pattern HW1

def fancy_pattern_hw1(n)
  n.times do |i|
    print '* ' * (n + 3 - i)
    (i + 1).times { print "#{i + 1} * " }
    print '* ' * (n + 3 - i)
    puts
  end
end
# 7. Fancy Pattern HW3

def fancy_pattern_hw3(n)
  n.times do |i|
    (0..i).each { |j| print(j == 0 ? '* ' : "#{j} ") }
    (i).downto(1) { |j| print(j == 1 ? '* ' : "#{j - 1} ") }
    puts
  end

  n.times do |i|
    (0...n - i - 1).each { |j| print(j == 0 ? '* ' : "#{j} ") }
    (n - i - 2).downto(1) { |j| print(j == 1 ? '* ' : "#{j - 1} ") }
    puts
  end
end
# 8. Pascals Triangle

def pascal_babu(n)
  (1...n).each do |i|
    c = 1
    (1..i).each do |j|
      print "#{c} "
      c = c * (i - j) / j
    end
    puts
  end
end
# 9. Fancy Pattern 2 HW

def fancy_pattern2_hw(n)
  count = 1
  n.times do |i|
    (0..i).each do |j|
      print count
      count += 1
      print '*' if j < i
    end
    puts
  end

  start = count - n
  n.times do |i|
    k = start
    (1..(n - i)).each do |j|
      print k
      k += 1
      print '*' if j < (n - i)
    end
    start -= (n - i - 1)
    puts
  end
end
# 10. Hollow Butterfly

def hollow_butterfly(n)
  n.times do |i|
    (0..i).each { |j| print((i == 0 || j == 0 || i == n - 1 || i == j) ? '*' : ' ') }
    print '  ' * (n - i - 1)
    (0..i).each { |j| print((i == 0 || j == 0 || i == n - 1 || j == n - 1 || j == i) ? '*' : ' ') }
    puts
  end

  (1...n).each do |i|
    (0...(n - i)).each { |j| print((j == 0 || i + j == n - 1) ? '*' : ' ') }
    print ' ' * (2 * i)
    (0...(n - i)).each { |j| print((j == 0 || i + j == n - 1) ? '*' : ' ') }
    puts
  end
end

# 11. Hollow Triangle 1

def hollow_triangle1(n)
  n.times do |i|
    (0..i).each do |j|
      print((i == 0 || j == 0 || i == n - 1 || j == i) ? '*' : ' ')
    end
    puts
  end
end
# 12. Hollow Triangle 2

def hollow_triangle2(n)
  n.times do |i|
    print ' ' * (n - i)
    (0..i).each do |k|
      print((i == 0 || i == n - 1 || k == 0 || k == i) ? '*' : ' ')
    end
    puts
  end
end
# 13. Hollow Triangle 3

def hollow_triangle3(n)
  n.times do |i|
    (0...(n - i)).each do |j|
      print((i == 0 || j == 0 || i + j == n - 1) ? '*' : ' ')
    end
    puts
  end
end

# 14. Hollow Triangle 4

def hollow_triangle4(n)
  n.times do |i|
    print ' ' * i
    (0...(n - i)).each do |k|
      print((i == 0 || k == 0 || i + k == n - 1) ? '*' : ' ')
    end
    puts
  end
end


print "Enter a number (n): "
n = gets.chomp.to_i
puts "-----------------------------------------------"
pyramid(n)
puts "-----------------------------------------------"
inverted_pyramid(n)
puts "-----------------------------------------------"
right_angle_triangle(n)
puts "-----------------------------------------------"
counting_triangle(n)
puts "-----------------------------------------------"
counting_triangle1(n)
puts "-----------------------------------------------"
right_angle_counting_triangle(n)
puts "-----------------------------------------------"
pyramid_one_three(n)
puts "-----------------------------------------------"
mix_pyramid(n)
puts "-----------------------------------------------"
fancy_12_pattern(n)
puts "-----------------------------------------------"
full_fancy_pattern(n)
puts "-----------------------------------------------"
alphabet_pattern(n)
puts "-----------------------------------------------"
one_two_three(n)
puts "-----------------------------------------------"
three_two_one(n)
puts "-----------------------------------------------"
count_one_two_three(n)
puts "-----------------------------------------------"
count_one_two_but_three_again(n)
puts "-----------------------------------------------"
ulti_ginti_pyramid(n)
puts "-----------------------------------------------"
three_alphabet_repeat(n)
puts "-----------------------------------------------"
alphabet_seq(n)
puts "-----------------------------------------------"
alphabet_seq_but_two_minus(n)
puts "-----------------------------------------------"
alphabet_triangle_a_to_z(n)
puts "-----------------------------------------------"
more_pattern(n)
puts "-----------------------------------------------"
more_pattern1(n)
puts "-----------------------------------------------"
more_pattern2(n)
puts "-----------------------------------------------"
more_pattern3(n)
puts "-----------------------------------------------"
more_pattern4(n)
puts "-----------------------------------------------"
more_pattern5(n)
puts "-----------------------------------------------"
more_pattern6(n)
puts "-----------------------------------------------"
more_pattern7(n)
puts "-----------------------------------------------"
palindrom_equilateral_pyramid(n)
puts "-----------------------------------------------"
dabang_pattern(n)
puts "-----------------------------------------------"
more_pattern9(n)
puts "-----------------------------------------------"
lakhan_pyramid_123_pattern(n)
puts "-----------------------------------------------"
lakhan_pyramid_1357_pattern(n)
puts "-----------------------------------------------"
ulta_hollow_pyramid(n)
puts "-----------------------------------------------"
sidha_hollow_pyramid(n)
puts "-----------------------------------------------"
butterfly_pattern(n)
puts "-----------------------------------------------"
numeric_hollow_half_pyramid(n)
puts "-----------------------------------------------"
numeric_inverted_hollow_half_pyramid(n)
puts "-----------------------------------------------"
fancy_pattern_hw1(n)
puts "-----------------------------------------------"
fancy_pattern_hw3(n)
puts "-----------------------------------------------"
pascal_babu(n)
puts "-----------------------------------------------"
fancy_pattern2_hw(n)
puts "-----------------------------------------------"
hollow_butterfly(n)
puts "-----------------------------------------------"
hollow_triangle1(n)
puts "-----------------------------------------------"
hollow_triangle2(n)
puts "-----------------------------------------------"
hollow_triangle3(n)
puts "-----------------------------------------------"
hollow_triangle4(n)
puts "-----------------------------------------------"

