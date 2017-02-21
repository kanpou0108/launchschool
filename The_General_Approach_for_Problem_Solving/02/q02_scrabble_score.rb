Write a program that, given a word, computes the scrabble score for that word.

Letter Values

Letter                            Value
A, E, I, O, U, L, N, R, S, T      1
D, G                              2
B, C, M, P                        3
F, H, V, W, Y                     4
K                                 5
J, X                              8
Q, Z                              10

Understanding the Problem:
- Input: a stirng
  - lower case / upper case?
- Output: an integer (the scrabble score)
- Rules:
  - the score is the sum of the scores of each letter in the string
  - the letter value table is used to look up letter scores

Examples / Test Cases:
score('a')            # => 1
score('cabbage')      # => 14
score('Cabbage')      # => 14
    
Data Structure:
- input
  - array of chars
- rules
  - look up table: hash/object
    - mini data structure choice: {a: 1, e: 1 ... z: 10}
  
Algorithm:
- split the input into array of chars
- map to lower cased chars
- map each char into its scrabble score, referencing the loop up table
- reduce with summing up the values  (reduce(&:+))

