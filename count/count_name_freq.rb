def count_name_frequency(arr)
  freq = Hash.new(0)

  arr.each do|name|
    freq[name] += 1
  end

  freq
end

arr = ["bharat", "aman", "bharat", "raman", "bharat"]
puts count_name_frequency(arr)
#{"bharat" => 3, "aman" => 1, "raman" => 1}

-----------------------------------------------------------------------------

['Ajit', 'Satish', 'Ajit', 'Sandeep', 'Sandeep', 'Ajit'].each_with_object(Hash.new(0)) do |num, count|
  count[num] += 1
end
#{"bharat" => 3, "aman" => 1, "raman" => 1}
