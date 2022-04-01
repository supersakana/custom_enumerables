# List of enumerables
module Enumerable
  def my_each_with_index
    index = 0
    my_each do |item|
      yield [item, index]
      index += 1
    end
  end
end

# First exercise
class Array
  def my_each
    i = 0
    while i < length
      p yield (self[i])
      i += 1
    end
    self
  end
end
