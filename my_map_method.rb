class Array
  def my_map()
    result = []
    each do |item|
      result << yield(item)
    end
    result
  end
end


[1, 2, 3, 4].my_map {|el| puts el}
