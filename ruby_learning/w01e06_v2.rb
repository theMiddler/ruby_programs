# week 1 exercise 6
# convert user input temperature in Fahrenheit to Celsius

def convert(temp_f)
  (temp_f - 32) * 5 / 9
end

puts 'Enter temperature in Fahrenheit:'
STDOUT.flush
temp_f = gets.to_f  # change input to float before passing to method

# Putting the round function outside the method:
# This allows for changing the format of the output without
# changing the math inside the method.

tempC = (convert(temp_f)*100).round/100.0
puts "Temperature in Celsius:\n#{tempC}"
