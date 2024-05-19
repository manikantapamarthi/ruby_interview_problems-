def remove_vowels(text)
  result = ""
  text.split("").each do |c|
    if !("aeiou".include?(c.downcase))
      result += c
    end
  end
  return result
end

 p remove_vowels("hellow_world")