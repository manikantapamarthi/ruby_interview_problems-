# def find_2nd_highest_occurrence(str)
#   char_counts = Hash.new(0)

#   str.each_char { |char| char_counts[char] += 1 }
#   sorted_chars =  char_counts.sort_by {|_, count| count}.reverse
#   sorted_chars[1][0]
# end

# str = "aaaabbbcc"
# p find_2nd_highest_occurrence(str)


def second_highest_occurrence(str)
  char_counts = Hash.new(0)
  str.each_char {|char| char_counts[char] += 1}

  first_max, second_max = 0, 0
  char_counts.each do |char, count|
    if count > first_max
      second_max = first_max
      first_max = count
    elsif count > second_max && count < first_max
      second_max = count
    end
  end

  second_highest_char = nil

  char_counts.each do |char, count|
    if count == second_max
      second_highest_char = char
      break
    end
  end
  second_highest_char
end

str = "aaaabbcccc"
p second_highest_occurrence(str)
