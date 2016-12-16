# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
# 
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.
# 
# You may not use ruby's Date and Time methods.
# 
# Examples:
# Disregard Daylight Savings and Standard Time and other irregularities.

def after_midnight(str)
  return 0 if str == '24:00' || str == '00:00'
  hours, minutes = str.split(':')
  hours.to_i * 60 + minutes.to_i
end

def before_midnight(str)
  return 0 if str == '24:00' || str == '00:00'
  hours, minutes = str.split(':')
  1440 - (hours.to_i * 60 + minutes.to_i)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

