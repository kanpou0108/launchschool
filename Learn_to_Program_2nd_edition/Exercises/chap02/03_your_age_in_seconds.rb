# Your Age in Seconds
# How you could do it:
puts 60*60*24*365*36
# 1135296000

# How I would do it:
puts(Time.new - Time.gm(1976, 8, 3, 13, 31))
# 1198827073.799