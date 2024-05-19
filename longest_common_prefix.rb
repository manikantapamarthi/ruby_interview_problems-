require 'rspec'
=begin
    Write a function to find the longest common prefix string amongst an array of strings.

    If there is no common prefix, return an empty string "".

    

    Example 1:

    Input: strs = ["flower","flow","flight"]
    Output: "fl"

    Example 2:

    Input: strs = ["dog","racecar","car"]
    Output: ""
    Explanation: There is no common prefix among the input strings.
=end

def longest_common_prefix(strs)
	strs = strs.sort
	result = ""
	(0..(strs[0].length-1)).each do |i|
		if strs[0][i] == strs[-1][i]
			result += strs[0][i]
		else
			break
		end
	end
	result
end


strs = ["flower","flow","flight"]
p longest_common_prefix(strs)
# describe "longest_common_prefix" do
# 	it 'can take a array of strings and find longest prefix' do
# 		expect(longest_common_prefix(strs)).to eq("fl") 
# 	end
# end