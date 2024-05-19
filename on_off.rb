ON = 1
OFF = 0

def off_line(arry)
  a = arry.flatten
  b = []
  a.each do |el|
    b << el unless el == 1 || el == 0
  end
  b.each_slice(2).to_a
end


arry = [[5, ON], [10, OFF], [20, ON], [30, OFF]]
off_line(arry)
