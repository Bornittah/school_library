require_relative 'nameable'
require_relative 'capitalize'
require_relative 'trimmer'
require_relative 'base_decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super
  end

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end

  private :of_age?
end
