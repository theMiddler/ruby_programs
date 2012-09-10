# This script adheres to astronomical year numbering conventions:
# this system includes a year 0, whereas traditional systems may not.
# (see http://en.wikipedia.org/wiki/Astronomical_year_numbering)
#
# Information about interpreting dates before the 1582 introduction of the Gregorian calendar:
# http://en.wikipedia.org/wiki/Gregorian_calendar#Proleptic_Gregorian_calendar
# 

def leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) || year == 0
end

MINUTES_PER_DAY = 60 * 24

# test values and loop
years_to_test = [1900,2000,2004,2005,2200,2400,0]
years_to_test.each do |year|
  days_per_year,text_modifier = leap_year?(year) ? [366,''] : [365,'not ']
  minutes_in_year = days_per_year * MINUTES_PER_DAY
  puts "There are #{minutes_in_year} minutes in year #{year}, which is #{text_modifier}a leap year."
end