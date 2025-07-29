def is_consecutive
  parent = [1, 2, 3, 4, 5]
  child  = [6, 7, 8, 9, 10]

  expected_parent = (parent.first..parent.last).to_a
  expected_child = ((parent.last + 1)...(parent.last + 1 + child.size)).to_a

  if parent == expected_parent && child == expected_child
    puts "Both parent and child are consecutive"
  else
    puts "Not consecutive"
  end
end

is_consecutive
