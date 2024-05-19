require "rspec"

def get_number_div_by_three_and_five(arr)
  # filtered_numbers = []
  # arr.each do |i|
  #  filtered_numbers << i  if (i % 3 == 0 && i % 5 == 0)
  # end
  # filtered_numbers

  arr.select {|num| num % 3 == 0 && num % 5 == 0}
end

arr = (1..100)
# p get_number_div_by_three_and_five(arr)


describe "#get_number_div_by_three_and_five" do
  it "returns numbers which are divisible by 3 and 5" do
    expect(get_number_div_by_three_and_five(1..100)).to eq([15, 30, 45, 60, 75, 90])   
  end
end



# //////////////////////////////////
# class Array
# end

# Array.class_eval do
#   def my_map
    
#   end 
# end

# arr = Array.new
# arr.my_method


# a = ["a", "b", "c"]
# a.map {|el| puts el}


#Employee.joining_date


