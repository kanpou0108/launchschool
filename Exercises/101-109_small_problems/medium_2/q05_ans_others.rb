def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort

  case
  when sides[0] + sides[1] <= sides[2] || sides.include?(0)
    :invalid
  when (sides[1] == sides[0]) ^ (sides[1] == sides[2])
    :isosceles
  when sides[0] == sides[1] && sides[1] == sides[2]
    :equilateral
  else :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
