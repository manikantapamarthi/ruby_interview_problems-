def find_even(array, *filters)
  array.select do |el|
    filters.all? {|filter| filter.call(el)}
  end
end

array = [1, 2, 3, 4, 5, 6]
filter = ->(el) { el < 4}

puts find_even(array, filter)
