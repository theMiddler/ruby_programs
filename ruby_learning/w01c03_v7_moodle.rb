require 'prompt.rb'
=begin
Here is the required 'prompt.rb' script:

def prompt(string)
  puts string
  STDOUT.flush
  gets
end
=end

def multiplication_table(input_num,header_choice,decorate_choice)
  ## define table dimensions
  max_table_entry = input_num**2                  # largest value in table
  column1_width = input_num.to_s.length + 1       # width of first column only
  columnX_width = max_table_entry.to_s.length + 1 # width of all other columns
  
  ## create the three different table parts: header, decoration, matrix
  # header
  header_choice == 'y' ? header = create_header(input_num) : header = ''

  # decoration
  decorate_choice == 'y' ? decoration = create_decoration(input_num,column1_width,columnX_width) : decoration = ''
  
  # matrix
  matrix = ''
  multiplier_range = (1..input_num)
  for row in multiplier_range
    matrix &lt;&lt; create_rows(row,multiplier_range,column1_width,columnX_width)
  end
  
  # assemble table parts
  table = header + decoration + matrix + decoration
end

def create_header (input_num)
  table_header = "Times table to #{input_num}\n"
end

def create_decoration (input_num,column1_width,columnX_width)
  decoration_width = (column1_width + columnX_width * (input_num - 1)) + 1
  decoration = ('=' * decoration_width) + "\n"
end

def create_rows (row,column_range,column1_width,columnX_width)
  column_range.each_with_index do |column,index|
    if index == 0 then
      @row = format("%#{column1_width}i",row * column).to_s   # first column
    else
      @row &lt;&lt; format("%#{columnX_width}i",row * column).to_s  # all other columns
    end
  end
  @row &lt;&lt; "\n"  
end

=begin
**** commenting out the main method input prompts to run the tests below
input_num = prompt('Enter input_num: ').to_i
header_choice = prompt('Type \'y\' to add table header').chomp
decorate_choice = prompt('Type \'y\' to add table decoration').chomp
table = multiplication_table(input_num,header_choice,decorate_choice)
puts table
=end

# test 1 - header and decoration
input_num = 9; header_choice = 'y'; decorate_choice = 'y'
table = multiplication_table(input_num,header_choice,decorate_choice)
puts
puts table
# test 2 - header only
input_num = 11; header_choice = 'y'; decorate_choice = 'n'
table = multiplication_table(input_num,header_choice,decorate_choice)
puts
puts table
#test 3 - decoration only
input_num = 13; header_choice = false; decorate_choice = 'y'
table = multiplication_table(input_num,header_choice,decorate_choice)
puts
puts table
#test 4 - no header or decoration
input_num = 15; header_choice = ''; decorate_choice = 'w'
table = multiplication_table(input_num,header_choice,decorate_choice)
puts
puts table
puts