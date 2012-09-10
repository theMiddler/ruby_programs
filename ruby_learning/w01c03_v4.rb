=begin

 multiplication_table (input_num, heading = '', decorate = false)
  returns a string object.

table1 = multiplication_table 9, 'Times Table to 9', true
table2 = multiplication_table 20

puts table1
puts
puts table2
=end



require '~/RubyScripts/ruby_learning/old/prompt.rb'

def create_row (row,column_range,first_column_width,other_columns_width)
  column_range.each_with_index do |column,index|
    if index == 0 then
      @row = format("%#{first_column_width}i",row * column).to_s
    else
      @row << format("%#{other_columns_width}i",row * column).to_s
    end
  end
  @row
end

input_num = prompt('Enter input_num: ').to_i
header = prompt('Add table header(y/n)?').chomp
decorate = prompt('Decorate table (y/n)? ').chomp

first_column_width = input_num.abs.to_s.length + 1
max_table_entry = input_num**2
other_columns_width = max_table_entry.to_s.length + 1
decoration_width = 1 + (first_column_width + other_columns_width * (input_num - 1)).abs
decoration = '=' * decoration_width

puts decoration if decorate == 'y'
multiplier_range = case
            when input_num > 0 then (1..input_num)
            when input_num < 0 then (input_num..-1)
            when input_num == 0 then (0..0)
            end
for row in multiplier_range
  puts create_row(row,multiplier_range,first_column_width,other_columns_width)
end
puts decoration if decorate == "y"
