def swap(word)
  word.split(" ").map {|i| i.sub(/^(\w)(.*)(\w)$/, '\3\2\1')}.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'