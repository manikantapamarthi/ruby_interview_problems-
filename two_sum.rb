nums = [0,1,2,3,5,6]
target = 8

def two_sum(nums, target)
  (0..nums.length-1).each do |i|
    pointer = i+1
    
    (pointer..nums.length-1).each do |j|
      if nums[i] + nums[j] == 8
        arr = [nums[i], nums[j]]
      end
    end
  end
end


p two_sum(nums, target)

---------------------------------------------------------------------------------------------------------------


arry = [2,9,7,4,12,76,26,90,10,20,6,1,2,7]

indexes = [5,3,9,1,10]

def sum_elements(arry, indexes)
sum_of_elements = []
  indexes.each do |i|
   new_array = arry[0..i]
   sum_of_elements << new_array.sum
  end
   sum_of_elements  
end  
  
p sum_elements(arry, indexes)