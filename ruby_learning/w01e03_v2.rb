# week 1 exercise 3
# objective: display age to 2 decimals, given age in seconds

age_in_seconds = 979000000
seconds_per_year = 60 * 60 * 24 * 365  # sec/min * min/hr * hr/day * day/yr
puts "Age in seconds: #{age_in_seconds}"
puts "Seconds per year: #{seconds_per_year}"
age_in_years = age_in_seconds.to_f / seconds_per_year
puts "Age in years: %.2f" % age_in_years
