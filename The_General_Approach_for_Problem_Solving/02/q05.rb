Launch School - an online school for developers		easy4-2  'What Century is That?'
https://launchschool.com/exercises/d6a8f167

Write a function that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Understanding the Problem:
- input:
  - integer number
  - need to validate?
- output:
  - a string
  - begins with the century number
  - ends with st, nd, rd or th
- rules:
  - new centuries begin in years that ends with 01
  - century string number into a string:
    - 1: st
    - 2: nd
    - 3: rd
    - 4-20: th
    - 21: st
    - 22: nd
    - 23: rd
    - 24-30: th
    ...
    - generalize:
      - century_number % 10
        - 1, 2, 3: st, nd, rd
        - 0, 4-9: th
      - except for 11, 12, 13: th

Examples / Test Cases:
        
century(1) == '1st'
century(100) == '1st'
century(101) == '2nd'
century(133) == '2nd'
century(245) == '3rd'
century(1052) == '11th'
century(1152) == '12th'
century(1252) == '13th'
century(2012) == '21st'
century(2112) == '22nd'
century(22222) == '223rd'
century(22522) == '226th'

Data Structure:
- input
  - number
- rules
  - as data or as logic/code?

Algorithm:
- century_number = (year - 1) % 100   # ← これだけだと'1'の時にバグる。'1'だけは例外対応が必要と思われ。
- century_string = century_number to string, then "apply suffix rules"

Abstraction:


