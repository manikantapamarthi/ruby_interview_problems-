# https://leetcode.com/problems/valid-parentheses/description/

def is_valid(s)
  pairs = []
  parentheses = {"(" => ")", "[" => "]", "{" => "}"}
  
  s.chars do |char|
    pairs << char if parentheses.key?(char)
    return false if parentheses.key(char) && parentheses.key(char) != pairs.pop
  end
end



# is_valid("()")
# is_valid("()[]{}")
p is_valid("()")
