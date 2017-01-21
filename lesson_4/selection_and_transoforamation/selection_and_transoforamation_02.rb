# Let's now take a look at an example with hashes. 
# In this example we want to select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  hsh_new = Hash.new{nil}
  hsh.values
  
  
  hsh_new
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

  # loop do
  #   if 
  #     
  #   end
  # end

# [161] pry(main)> produce = {
# [161] pry(main)*   'apple' => 'Fruit',
# [161] pry(main)*   'carrot' => 'Vegetable',
# [161] pry(main)*   'pear' => 'Fruit',
# [161] pry(main)*   'broccoli' => 'Vegetable'
# [161] pry(main)* }
# => {"apple"=>"Fruit", "carrot"=>"Vegetable", "pear"=>"Fruit", "broccoli"=>"Vegetable"}
# [162] pry(main)>
# [163] pry(main)>
# [164] pry(main)> produce.select{|k, v| v == "Fruit" }
# => {"apple"=>"Fruit", "pear"=>"Fruit"}