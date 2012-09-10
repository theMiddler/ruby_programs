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

# define table-specific variables
max_table_entry = input_num**2
first_column_width = input_num.to_s.length + 1
other_columns_width = max_table_entry.to_s.length + 1

table_header = "Times table to #{input_num}"
x = "Times table to #{input_num}".length/2
puts x,table_header
table_header_padded = format("%###{x+x/2}s", table_header).to_s

decoration_width = 1 + (first_column_width + other_columns_width * (input_num - 1))
decoration = '=' * decoration_width

puts
puts table_header_padded if header == 'y'
puts decoration if decorate == 'y'
multiplier_range = (1..input_num)
for row in multiplier_range
  puts create_row(row,multiplier_range,first_column_width,other_columns_width)
end
puts decoration if decorate == "y"
puts