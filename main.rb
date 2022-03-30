# List of enumerables
module Enumerable
  # Your code goes here
end

# First exercise
class Array
  def my_each
    i = 0
    while i < length
      yield [keys[i], values[i]] if is_a?(Hash)
      yield self[i] unless is_a?(Hash)
      i += 1
    end
    self
  end
end
