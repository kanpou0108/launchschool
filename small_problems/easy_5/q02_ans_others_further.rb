# def time_of_day(delta_min)
#   hour, min = delta_min.divmod(60)
#   "%02d:%02d" % [hour % 24, min]
# end

def time_of_day(delta_min)
  t = Time.new
  delta_sec = delta_min * 60
  (t + delta_sec).strftime("%A %02H:%02M")
end

p time_of_day(0) 
p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437) 
p time_of_day(3000) 
p time_of_day(800) 
p time_of_day(-4231) 
