# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_numbers = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }

  result = 0
  prev_val = 0
  s.reverse.chars.each do |char|
    value = roman_numbers[char]

    if value < prev_val
      result -= value
    else
      result += value
    end
    prev_val = value
  end
  return result

end


puts roman_to_int("LVIII")