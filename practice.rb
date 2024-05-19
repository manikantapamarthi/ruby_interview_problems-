


module NewModule
  def test_method
    puts "from new module"
  end
end

class NewKlass
include NewModule

  def test_method
    puts "from new klass"
  end
end

klass = NewKlass.new
puts klass.test_method
