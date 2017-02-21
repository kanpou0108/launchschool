Launch School - an online school for developers   "Diamonds!"   med1-5
https://launchschool.com/exercises/75ff93ae

Write a function that takes an integer number as input, and prints out a diamond with the "*" characters whose width is the number n.

For example:

Given n = 3

 * 
***
 * 
 
Given n = 5

  *  
 *** 
***** 
 *** 
  *  

Understanding the Problem:
- input: number
  - what happen when the number is 0?
  - what happen when the number is an even number?
- output:
  - returns a string with new line char "\n" delimiters
  - print on the screen
- model the problem
  - given an odd number n, for example, 5
  - output n strings
    - 1, 3, 5, 3, 1
    - prepend number of spaces: 2, 1, 0, 1, 2
  - join together with \n, or loop and print  
    
Data Structure:
- Number

Algorithm:
- from an odd number, 2a+1
  - generate an array, [1, 3, .. 2a+1, ... 3, 1]
  - generate an array, [a, a-1, .., 1, 0, 1, .. , a-1, a]
- loop through the two arrays at the same time
  - for each iteration, print out x of number * prepended by y

Further Thinking:
- Hollow Diamond?

  *  
 * * 
*   * 
 * * 
  *  

 
- Seeing Stars?
  Launch School - an online school for developers   Seeing Stars  adv1-2
  https://launchschool.com/exercises/facfe405
