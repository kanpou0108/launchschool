def bubble_sort!(array)
  n = array.size - 1
  loop do
    swapped = false
    1.upto(n) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    n -= 1
    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Further Exploration
# 
# If you want to optimize the loop, you need to deduct 1 from n because the last digit for sure is the biggest number after the first iteration. Then , the second last digit and so on...
