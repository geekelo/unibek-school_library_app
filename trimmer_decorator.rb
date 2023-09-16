require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0, 10] # Trim to a maximum of 10 characters
  end
end
