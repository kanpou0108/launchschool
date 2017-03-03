def hexadecimal_to_integer(string)
  array = %w(0 1 2 3 4 5 6 7 8 9 A B C D E F)
  string.reverse!.upcase!
  index, number, decimal = 0, 0, 1

  string.length.times do
    number += decimal * array.index(string[index])
    decimal *= 16
    index += 1
  end
  number
end

p hexadecimal_to_integer('4D9f') == 19871