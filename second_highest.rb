def second_highest(arr)
  highest = nil
  second_highest = nil

  arr.each do |num|
    if highest.nil? || num > highest
      second_highest = highest
      highest = num
    elsif second_highest.nil? || (num > second_highest && num < highest)
      second_highest = num
    end
  end
  second_highest
end


arr =  [5,4,9,5,3,2,9]
p second_highest(arr)
