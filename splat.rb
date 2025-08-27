def do_sth(*input)
  input.each { |x| p x }
end

do_sth(3,4,5)


#=======================

def do_sth1(**input)
  input.each do |k,v|
    p "#{k}---#{v}"
  end
end


do_sth1('a': 1, 'b': 2)