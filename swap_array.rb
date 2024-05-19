def sort_array(array)
  n = array.length
  swapped = true
  while swapped
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i +1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  array
end

array = [1, 1, 3, 4, 2, 5, 6,]
p sort_array(array)