# Possible solution if extra credit was given and the total averaged above 100. However, this doesn't work if you have negative scores. But I've never taken a test that goes below 0 so we'll stick with this :)

def get_grade(score_1, score_2, score_3)
  total = (score_1 + score_2 + score_3)/3

  case total
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  when 0..59 then  'F'
  else             'A+++'
  end
end

p get_grade(105, 106, 107)

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
