class Person:
  def __init__(self, name, age):
      self.name = name
      self.age = age

  def can_use_services(self):
      return self.age >= 18

class Teacher(Person):
  def __init__(self, name, age, specialization):
      super().__init__(name, age)
      self.specialization = specialization

  def can_use_services(self):
      return True
