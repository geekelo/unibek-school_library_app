require_relative 'nameable'
class Decorator < Nameable
  attr_accessor :name, :age

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
