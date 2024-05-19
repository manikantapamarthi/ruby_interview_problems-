def two_sum(nums, target)
  num_hash = {}

  nums.each_with_index do |num, i|
    complement = target - num

    if num_hash.key?(complement)
      return [num_hash[complement], i]
    end

    num_hash[num] = i
  end
  num_hash
end


nums = [2, 7, 11, 15]
target = 9

p two_sum(nums, target)
