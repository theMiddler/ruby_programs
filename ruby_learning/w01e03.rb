# age exercise
age_in_s = 979000000
seconds_per_year = 60 * 60 * 24 * 365
puts 'Age in seconds: ' + age_in_s.to_s
puts 'Seconds per year: ' + seconds_per_year.to_s
age_in_years = age_in_s.to_f / seconds_per_year.to_f
#printf("Age in years: %5.2f\n", age_in_years)
puts 'Age in years: ' + format("%.2f",age_in_years)
