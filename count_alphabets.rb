def count_alphabets(str)
  countstr = ""
  count = 1
  (0...(str.length)).each do |i|
    if str[i] == str[i+1]
      count += 1
    else
      countstr += "#{count}" + "#{str[i]}"
      count = 1
    end
  end
  countstr
end

str = "aaabbbccadd"
#expected output 3a3b2c1a2d
p count_alphabets(str)