# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.
# 
# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

# mutating the caller
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# NOT mutating the caller
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

buffer = [1, 2, 3]
p buffer
p rolling_buffer1(buffer,10,5)
p buffer
puts "--------------------------------"
p buffer
p rolling_buffer2(buffer,10,4)
p buffer
