require 'time'

SECONDS_PER_MINUTE = 60
MINUTES_PER_DAY = 1440

def after_midnight(time_string)
  ((Time.parse(time_string) - Time.parse('00:00')) / SECONDS_PER_MINUTE) % MINUTES_PER_DAY
end

def before_midnight(time_string)
  ((Time.parse('24:00') - Time.parse(time_string)) / SECONDS_PER_MINUTE) % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

