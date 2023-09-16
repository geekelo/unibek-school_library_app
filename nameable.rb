# frozen_string_literal: true

class Nameable
  def correct_name
    raise NotImplementedError, 'Sub methods must implement this method'
  end
end
