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


def multiplication_table (input_num = 9,header = false, decorate = false)

  # define table-specific variables
  #   column widths
  max_table_entry = input_num**2
  first_column_width = input_num.to_s.length + 1
  other_columns_width = max_table_entry.to_s.length + 1
  #   decoration width & value
  decoration_width = 1 + (first_column_width + other_columns_width * (input_num - 1))
  decoration = '=' * decoration_width
  #   header
  table_header = "Times table to #{input_num}"
  x = "Times table to #{input_num}".length/2
  puts x,table_header
  table_header_padded = format("%###{x+x/2}s", table_header).to_s  
  multiplier_range = (1..input_num)
  # output
  #puts
  #puts table_header_padded if header == 'y'
  #puts decoration if decorate == 'y'
  #for row in multiplier_range
  puts multiplier_range,first_column_width,other_columns_width
  #  yield(multiplier_range,first_column_width,other_columns_width)
  #end
  #puts decoration if decorate == "y"
  #puts
end
multiplication_table do |column_range,first_column_width,other_columns_width|
puts column_range,first_column_width,other_columns_width
=begin  column_range.each_with_index do |column,index|
    if index == 0 then
      @row = format("%#{first_column_width}i",row * column).to_s
    else
      @row << format("%#{other_columns_width}i",row * column).to_s
    end
  end
  @row
=end
end

input_num = prompt('Enter input_num: ').to_i
header = prompt('Add table header(y/n)?').chomp
decorate = prompt('Decorate table (y/n)? ').chomp

multiplication_table(input_num,header, decorate)