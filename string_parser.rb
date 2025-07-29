#  Build a program that utilizes regular expressions to extract specific set integers from a string in Ruby.

require 'rspec'

string_array = [
  "Web IconHTML & CSS100%",
  "Command LineLearn the Command Line100%",
  "Ruby IconRuby50%",
  "Rails IconLearn Ruby on Rails100%",
  "Git IconLearn Git100%",
  "SassLearn Sass20%",
  "JQuery IconjQuery1%",
  "Angular JSLearn AngularJS 1.X100%",
  "Javascript IconLearn JavaScript55%"
]


class StringParser
  def parse_string str_arr
    final_array = []
    str_arr.each do |raw_string|
      final_array << raw_string.scan(/\d+/).last.to_i
    end
    final_array
  end
end

a = StringParser.new
puts a.parse_string(string_array)




describe 'String Parser' do
  it 'can take a string and output the interger values' do
    expect(StringParser.new.parse_string(string_array)).to eq([100 ,100 ,50 ,100 ,100 ,20 ,1 ,100 ,55])
  end
end
