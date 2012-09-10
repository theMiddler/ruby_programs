def conversion(input_unit,output_unit,input_temp)
  if input_unit.downcase == 'f' and output_unit.downcase == 'c' then
        output_temp = fahrenheit_to_celsius(input_temp)
  end
end

def fahrenheit_to_celsius(temperature)
  converted_temp = (temperature.to_f - 32) * 5 / 9
end

def celsius_to_fahrenheit(temperature)
  converted_temp = temperature.to_f * 9 / 5 + 32
end

def Fahrenheit_to_Kelvin(temperature)
  'x'
end

puts
puts 'Temperature Conversion'
puts 'From unit (enter C,F,K):'
input_unit = gets.chomp
puts 'To unit (enter C,F,K):'
output_unit = gets.chomp
puts 'Temperature to convert (enter value):'
input_temp = gets.chomp

output_temp = conversion(input_unit,output_unit,input_temp)

puts format('%.2f',input_temp) + ' ' + input_unit.upcase + ' = ' + format('%.2f',output_temp) + ' ' + output_unit.upcase