# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
# 
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
# 
# You may not use ruby's Date and Time classes.
# 
# Disregard Daylight Savings and Standard Time and other complications.

# Examples:

def time_of_day(time)
  case time <=> 0
    when -1
      hours, minutes = time.abs.divmod(60)
      hours = hours % 24
      time_gap = 1440 - (hours * 60 + minutes)
      hours_new, minutes_new = time_gap.divmod(60)
      return "#{format('%02d', hours_new)}:#{format('%02d', minutes_new)}"
    when 1
      hours, minutes = time.abs.divmod(60)
      hours = hours % 24
      time_gap = (hours * 60 + minutes)
      hours_new, minutes_new = time_gap.divmod(60)
      return "#{format('%02d', hours_new)}:#{format('%02d', minutes_new)}"    
    else
      return "00:00"
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


