
def find_sub_str(str, sub_str)
  return -1 if !str.include?(sub_str)

  (0..(str.length - sub_str.length)).each do |i|
    if(str[i, sub_str.length] == sub_str)
      return i
    else
      -1
    end
  end
end


str = "sadbutsad"
sub_str = "sad"

p find_sub_str(str, sub_str)

