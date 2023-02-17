require_relative 'person'

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
