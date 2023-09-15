require_relative 'person'

class Teacher < Person
  def initialize(id, specialization)
    super(id)
    @specialization = true
  end

  def can_use_services?
    true
  end
end
