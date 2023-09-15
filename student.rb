require_relative 'person'

class Student < Person
  def initialize (id, classroom)
    super(id)
    @classroom = classroom
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end
