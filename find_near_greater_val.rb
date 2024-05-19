def retrun_near_great_value(arr, k)
  return k if (arr.max <= k || arr.include?(k) )

  greater_value = k + 1
  if arr.include?(greater_value)
    return greater_value
  else
    greater_value += 1
    arr.each do |el|
      if arr.include?(greater_value)
        return greater_value
        break
      else
        greater_value += 1
      end
    end
  end
  # while arr.include?(greater_value)
  #   greater_value += 1
  # end
  # greater_value


end


arr = [-5,1,2,4,8,9,10,12,15]
k =7

p retrun_near_great_value(arr, k)
