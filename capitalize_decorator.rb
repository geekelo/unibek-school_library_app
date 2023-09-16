# frozen_string_literal: true

require_relative 'decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end
