# frozen_string_literal: true

require_relative 'person'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

person = Person.new(22, 'maximilianus')
puts person.correct_name # Outputs: maximilianus

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name # Outputs: Maximilianus

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name # Outputs: Maximilian
