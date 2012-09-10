def leap_year?(year)
  year = year.abs-1 if year < 0
  case 
  	
    when year % 400 == 0 then true
    when year % 100 == 0 then false
    when year % 4 == 0 then true
    else false
  end
end

years_to_test = [1900,2000,2004,2005,0,-1,-4,-25,-1000]

MINUTES_PER_DAY = 60 * 24

years_to_test.each do |year|
  if year != 0 then 
    days_per_year,text_modifier = leap_year?(year) ? [366,''] : [365,'not ']
    minutes_in_year = days_per_year * MINUTES_PER_DAY
    puts "There are #{minutes_in_year} minutes in year #{year}, which is #{text_modifier}a leap year."
  else
    puts "'#{year}' is not a valid year."
  end  
end  
