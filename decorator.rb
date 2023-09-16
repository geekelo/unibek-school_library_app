require_relative 'nameable'
class Decorator < Nameable
  super() # Call super to initialize state of the parent class.
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
