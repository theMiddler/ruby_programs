# exercise 2.2

def convert(tempF)
  tempC = (tempF.to_f - 32) * 5 / 9
  #(tempC * 100).round/100.0
  #format("%.2f",tempC.to_f)
end

puts 'Enter temperature in Fahrenheit:'

STDOUT.flush
tempF = gets.chomp

tempC = (convert(tempF)*100).round/100.0
puts "Temperature in Celsius: #{tempC}"
puts tempC
puts 'temp in C: ' + tempC.to_s

#result = convert(212)
#puts result.class

#puts "#{(convert(212) + convert(-40)) / 2}"
#puts "#{(convert(212).to_f + convert(-40).to_f) / 2}"