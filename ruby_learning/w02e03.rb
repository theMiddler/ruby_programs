require('./prompt.rb')

def leap_year?(year)
  puts year
  case 
    when year % 400 == 0 then true
    when year % 100 == 0 then false
    when year % 4 == 0 then true
    else false
  end
end

year = prompt('Input a year to find the number of minutes in that year.').to_i
if year <= 0 then puts 'Not a valid year.'; exit() end

MINUTES_PER_DAY = 60 * 24
days_per_year,text_modifier = leap_year?(year) ? [366,''] : [365,'not ']
minutes_in_year = days_per_year * MINUTES_PER_DAY

puts "There are #{minutes_in_year} minutes in year #{year}, which is #{text_modifier}a leap year."
