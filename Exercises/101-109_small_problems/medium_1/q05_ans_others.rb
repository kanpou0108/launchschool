def diamond(size)
  (1...size).step(2) { |n| puts ('*' * n).center(size) }

  (-size..-1).step(2) { |n| puts ('*' * -n).center(size) }
end

diamond(1)
diamond(3)
diamond(9)