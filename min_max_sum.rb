#https://www.hackerrank.com/challenges/mini-max-sum/problem?isFullScreen=true

def min_max_sum(arry)
  sum = []
  (0..(arry.length-1)).each do |i|
    new_arry = arry.reject.with_index {|_el, index| index == i}
    sum << new_arry.inject(:+)
  end
  "#{sum.min} #{sum.max}" 
end

arry = [1,3,5,7,9]
p min_max_sum(arry)