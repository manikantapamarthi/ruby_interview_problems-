class Animal
  def speak
    "backback"
  end
end

class Dog < Animal
  def speak
    "bark"
  end
end

class Cat < Animal
  def speak
    "meow"
  end
end

animal = Animal.new

p animal.speak
animal = Cat.new
puts animal.speak

////////////////////////////////////////////////////////////

