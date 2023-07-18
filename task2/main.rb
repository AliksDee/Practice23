require_relative 'console_input'

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

class PersonRepository
  def initialize
    @people = []
  end



  def add_person(person)
    @people << person
  end

  def display_people
    @people.each { |person| puts person }
  end
end



repository = PersonRepository.new

name = ConsoleInput.get_input("Enter name: ")
age = ConsoleInput.get_integer("Enter age: ")
height = ConsoleInput.get_float("Enter height: ")

person = Person.new(name, age, height)
repository.add_person(person)

puts "People:"
repository.display_people
