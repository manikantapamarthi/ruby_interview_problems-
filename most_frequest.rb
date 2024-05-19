def find_most_frequent(input)
  numbers_hash = Hash.new(0)
  input.each do |el|
    numbers_hash[el] += 1
  end
  numbers_hash.key(numbers_hash.values.max)
end

input = [1,2,3,3,3,3,4,5,5]
# expected output 3
p find_most_frequent(input)
