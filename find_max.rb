def find_max(array)
  max_number = array[0]
  array.each do |el|
    max_number = el if el > max_number
  end
  max_number
end

array = [5, 3, 8, 2, 9, 1]

p find_max(array)
