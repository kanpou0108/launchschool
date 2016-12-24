# This actually works :)
def get_grade(*grades)
  average_grade = grades.inject(:+) / grades.size

  case average_grade
  when 90..100  then 'A'
  when 80..100  then 'B'
  when 70..100  then 'C'
  when 60..100  then 'D'
  when 00..100  then 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
