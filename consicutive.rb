# def is_consecutive
#   parent = [1, 2, 3, 4, 5]
#   child  = [6, 7, 8, 9, 10]

#   expected_parent = (parent.first..parent.last).to_a
#   expected_child = ((parent.last + 1)...(parent.last + 1 + child.size)).to_a

#   if parent == expected_parent && child == expected_child
#     puts "Both parent and child are consecutive"
#   else
#     puts "Not consecutive"
#   end
# end

# is_consecutive




# def are_all_consecutive(*arrays)
#   arrays.each_with_index do |arr, i|
#     # 1. Har array continuous ho
#     expected = (arr.first..arr.last).to_a
#     return false unless arr == expected

#     # 2. Pehle wale ke baad start ho
#     if i > 0
#       prev = arrays[i - 1]
#       return false unless arr.first == prev.last + 1
#     end
#   end
#   true
# end
