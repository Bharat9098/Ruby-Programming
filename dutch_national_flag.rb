def segregate(a)
  right = a.length-1
  left = 0
  current = 0

  while(current <= right)
    if a[current] == 0
      swap(a,left,current)
      left += 1
      current += 1
    elsif a[current] == 2
      swap(a, right, current)
      right -= 1
    else
      current += 1
    end
  end
 print a
end

def swap(a,i,j)
  a[i], a[j] = a[j],a[i]
end

segregate([0, 1, 1, 0, 1, 2, 1, 2, 0, 0, 0, 1])
