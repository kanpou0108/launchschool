def switch(light_boolean)
  !light_boolean
end

def lights_on(number_of_lights)
  lights_array = Array.new(number_of_lights, false)
  num = number_of_lights
  iterator = 1

  num.times do
    lights_array.each_with_index do |light, index| 
      lights_array[index] = switch light if (index+1) % iterator == 0
    end
    iterator +=1
  end

  lights_off = lights_array.each_index.select{|i| lights_array[i] == false}.map! {|value| value + 1}
  puts "There are #{lights_array.count(true)} on."
  puts "The lights off include #{lights_off}"

end

puts lights_on(1000)