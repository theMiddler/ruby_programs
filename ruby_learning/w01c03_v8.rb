
def multiplication_table(input_num,header_choice,decorate_choice)
  ## define table dimensions
  max_table_entry = input_num**2                  # largest value in table
  column1_width = input_num.to_s.length + 1       # width of first column only
  columnX_width = max_table_entry.to_s.length + 1 # width of all other columns
  
  ## create the three different table parts: header, decoration, matrix
  # create header part if chosen
  header_choice == 'y' ? header = create_header(input_num) : header = ''

  # create decoration part if chosen
  decorate_choice == 'y' ? decoration = create_decoration(input_num,column1_width,columnX_width) : decoration = ''
  
  # create multiplication matrix
  matrix = ''
  multiplier_range = (1..input_num)
  for row in multiplier_range
    matrix << create_rows(row,multiplier_range,column1_width,columnX_width)
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
      @row << format("%#{columnX_width}i",row * column).to_s  # all other columns
    end
  end
  @row << "\n"  
end

#table = multiplication_table(input_num,header_choice,decorate_choice)

puts
puts multiplication_table(9,'y','y')
puts
puts multiplication_table(12,'x','y')
puts
puts multiplication_table(15,'y','n')
puts
puts multiplication_table(18,'','')
puts

