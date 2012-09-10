#s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
#lines = s.split("\n")
#lines.each_index {|i| puts "Line #{(i+1)}: #{lines[i]}"}


#s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
#lines = s.split("\n")
#lines.each_with_index {|line,index| puts "Line #{ index + 1 }: #{ line }"}

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s.lines.each_with_index {|line,index| puts "Line #{index.next}: #{line}"}
#puts t

#puts s.each_line(i ||= 1)
#s.each_line {|x| puts x}