s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s.lines.with_index {|line,index| puts "Line #{index.next}: #{line}"}
