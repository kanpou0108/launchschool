Write a program that takes a word problem and returns the answer as an integer.

E.g.

What is 5 plus 13?
- The program should return 18.

What is 7 minus 5?
- The program should return 2.

What is 33 divided by -3?
- The program should return -11.

What is -3 multiplied by 25?
- The program should return -75.

Understanding the Problem:

Examples / Test Cases:

Data Structure:
- Input
  - string
- Rules:
  - plus: +
  - minus: -
  - multiplied by: *
  - divided by: /
  
Algorithm:
- strip the string from anything else other than numbers and the key phrases
- loop up key phrases
- apply arithmetic operations


