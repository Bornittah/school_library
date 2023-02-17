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

class Teacher < Person
  attr_reader :specialization

  def initialize(name, age, specialization)
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
