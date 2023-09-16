require_relative 'person'
class Student < Person
  attr_accessor :name
  attr_reader :classroom

  def initialize(classroom, age, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @name = name
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom&.students&.delete(self)
    @classroom = classroom
    classroom.students << self
  end
end
