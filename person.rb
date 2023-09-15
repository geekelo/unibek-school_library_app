class Person
  attr_reader :id, :name, :age

  def initialize(id, age, name: 'unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_writer :name, :age

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
