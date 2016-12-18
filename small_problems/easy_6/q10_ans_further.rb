# For the further exploration (Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.)
def triangle_any_corner(n, corner_on_top=true, corner_on_left=true)
  range = corner_on_top ? n.downto(1) : 1..n
  range.each do |num_stars|
    if corner_on_left
      puts "*" * num_stars + " " * (n - num_stars)
    else
      puts " " * (n - num_stars) + "*" * num_stars
    end
  end
end

# triangle_any_corner(5)
triangle_any_corner(5, false, false)
triangle_any_corner(9, false, false)