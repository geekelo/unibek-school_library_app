require_relative 'decorator'

class TrimDecorator < Decorator
  def correct_name
    super[0, 10] # Trim to a maximum of 10 characters
  end
end
