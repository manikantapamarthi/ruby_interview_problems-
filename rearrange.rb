# Given an array A of elements of length N, ranging from 0 to N – 1. All elements may not be present in the array. every element is unique except for the -1 and If the element is not present then there will be -1 present in the array. Rearrange the array such that A[i] = i and if i is not present, display -1 at that place.

# Examples:

# Input : arr = {-1, -1, 6, 1, 9, 3, 2, -1, 4, -1} Output : [-1, 1, 2, 3, 4, -1, 6, -1, -1, 9]

# Input : arr = {19, 7, 0, 3, 18, 15, 12, 6, 1, 8, 11, 10, 9, 5, 13, 16, 2, 14, 17, 4} Output : [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]


# def rearrange(arr)
#   arr_length = arr.length
#   new_arry = []
#   (0...arr_length).each do |i|
#     if(arr[i] != i && arr.include?(i))
#       new_arry[i] = i
#     elsif(arr[i] != i && !arr.include?(i))
#       new_arry[i] = -1
#     else
#       new_arry << i
#     end
#   end
#   new_arry
# end

#chatGPT
# def rearrange_array(arr)
#   n = arr.length
#   result = []

#   # Create a hash map to store indices of elements present in the array
#   indices = {}
#   arr.each_with_index { |val, idx| indices[val] = idx if val != -1 }

#   # Fill result array based on indices hash map
#   (0...n).each { |i| result << (indices.key?(i) ? indices[i] : -1) }

#   result
# end

def rearrange_array(arr)
  n = arr.length

  for i in 0...n
    next if arr[i] == -1

    correct_index = arr[i]

    while arr[i] != -1 && arr[i] != correct_index
      temp = arr[correct_index]
      arr[correct_index] = arr[i]
      i = correct_index
      correct_index = temp
    end
  end

  arr
end

# Example usage
arr = [-1, -1, 6, 1, 9, 3, 2, -1, 4, -1]
rearranged_arr = rearrange_array(arr)
p rearranged_arr

# # Example usage:
# arr1 = [-1, -1, 6, 1, 9, 3, 2, -1, 4, -1]
# arr2 = [19, 7, 0, 3, 18, 15, 12, 6, 1, 8, 11, 10, 9, 5, 13, 16, 2, 14, 17, 4]

# # puts rearrange_array(arr1)  # Output: [-1, 1, 2, 3, 4, -1, 6, -1, -1, 9]
# p rearrange_array(arr1)  # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
