# Given this data structure write some code to return an array 
# which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# いろいろ間違ってる
# new_arr = arr.map do |hsh|
#   hsh.map do |_, v|
#     v.all? do |num|
#       num.even?
#     end
#   end  
# end

# new_arr = arr.select do |hsh|
#   hsh.map do |_, v|   # ここがmapではダメ
#     v.all? do |num|
#       num.even?
#     end
#   end  
# end
# => [{:a=>[1, 2, 3]}, {:b=>[2, 4, 6], :c=>[3, 6], :d=>[4]}, {:e=>[8], :f=>[6, 10]}]

new_arr = arr.select do |hsh|
  hsh.all? do |_, v|
    v.all? do |num|
      num.even?
    end
  end  
end
# [{:e=>[8], :f=>[6, 10]}]

p new_arr