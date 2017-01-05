def bubble_sort!(array)
  n = array.length - 1
  loop do
    newn = 0
    (0..n - 1).each do |idx|
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        newn = idx # <= This is where we track the location of the swap; the loop will end on the last swap
      end
    end
    n = newn # <= This is where we update the range of elements to look at
    break if n == 0
  end
  array
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
# I had to take some time with the Wiki pseudo-code to understand the two steps of optimization, so I thought providing an explanation might help someone else.
# 
# Because we know that the first pass will always get the largest element to the end of the list (because it will keep being moved by each comparison; see the number 7 in the LS example), we know that after the first pass we can ignore the last element in the list. We can then ignore the last two elements after the second pass, the last 3 elements after the third pass, etc... so rather than going through 1.upto(array.size - 1) every pass, we set n = array.size - 1, and increment n down n -=1 at the end of each pass. Therefore each pass has to make fewer comparisons.
# 
# The second optimization simply takes this a step further with the observation that, after the first pass, all elements after the last swap will be sorted. In that pass, the algorithm scanned the entire list, but didn't make any swaps after a certain point. Why have it scan again? Therefore, at the end of each swap, we set n equal to the index. When the loop starts over, it will only look at the elements (0.. index of last swap).

