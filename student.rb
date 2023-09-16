require_relative 'person'
class Student < Person
  attr_accessor :name
  attr_reader :classroom

  def initialize(name)
    @name = name
  end

  def classroom=(classroom)
    @classroom&.students&.delete(self)
    @classroom = classroom
    classroom.students << self
  end
end
