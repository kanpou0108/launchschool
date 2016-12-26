def diamond(size)
  puts '*'.center(size)
  (3...size).step(2) { |n| puts ('*' + ' ' * (n - 2) + '*').center(size) }

  (-size..-3).step(2) { |n| puts ('*' + ' ' * (-n - 2) + '*').center(size) }
  puts '*'.center(size)  
end

diamond(1)
diamond(3)
diamond(9)