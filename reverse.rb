def reverse(text)
  result = ""
   text.split("").each do |c|
    result = c + result
   end
   result
end


p reverse("mani kanta")