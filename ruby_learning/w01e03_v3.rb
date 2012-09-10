=begin

 multiplication_table (integer, heading = '', decorate = false)
  returns a string object.

table1 = multiplication_table 9, 'Times Table to 9', true
table2 = multiplication_table 20

puts table1
puts
puts table2
=end



require 'prompt'

def multiplication_table (integer,heading = false, decorate = false)
  max_entry = integer.to_i**2
  max_entry_size = max_entry.to_s.length + 1
  rows = columns = (1..integer)
  rows.each do |rownum|
    print rownum._to_s + ' '
    columns.each {|colnum| print format("%#{max_entry_size}i",rownum * colnum)}
  	print "\n"
  	end
	end
  
input_num = prompt('Enter integer: ').to_i
input_header = prompt('Add table header?')
input_decorate = prompt('Decorate table?')

table = multiplication_table(input_num, input_header, input_decorate)

puts table.class
puts table


