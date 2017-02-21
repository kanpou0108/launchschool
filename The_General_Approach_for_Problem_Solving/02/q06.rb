Launch School - an online school for developers   easy8-4
https://launchschool.com/exercises/70718e76

All Substrings

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

Examples: 

substrings('abcde') == 
[
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Abstraction:
  break this into two probles.
  - how to get all substrings starting at a specific index
    - generate an array that are substrings of the string, starting at the index
      - slice
    - length: 1, 2, 3, 4, ..., (string.length - starting_index)
  
  - map the original array of chars to an array ( of all substrings starting with that char )
    - mapping function:
      - char => all substrings starting at a specific index
      
      