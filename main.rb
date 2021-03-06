# List of enumerables
module Enumerable
  def my_each_with_index
    index = 0
    my_each do |item|
      yield [item, index]
      index += 1
    end
  end

  def my_select
    selected = []
    my_each do |item|
      selected.push(item) if yield(item)
    end
    selected
  end

  def my_all?(&block)
    all = my_select(&block)
    all == self
  end

  def my_any?(&block)
    any = my_select(&block)
    any.length.positive?
  end

  def my_none?(&block)
    none = my_select(&block)
    none.length.zero?
  end

  def my_count
    count = 0
    my_each do |item|
      if block_given?
        count += 1 if yield(item)
      else
        count += 1
      end
    end
    count
  end

  def my_map
    map = []
    my_each do |item|
      map.push(yield(item))
    end
    map
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
