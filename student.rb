class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def can_use_services?
    @age >= 18
  end
end

class Student < Person
  attr_reader :classroom

  def initialize(name, age, classroom)
    super(name, age)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
