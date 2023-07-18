class Person
  attr_accessor :name, :age, :height

  def initialize(name, age, height)
    @name = name
    @age = age
    @height = height
  end




  def to_s
    "Name: #{@name}, Age: #{@age}, Height: #{@height}"
  end
end
