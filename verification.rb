require_relative 'person'
require_relative 'capitalizeDecorator'
require_relative 'trimDecorator'

person = Person.new(22, 'maximilianus')
puts person.correct_name # Outputs: maximilianus

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name # Outputs: Maximilianus

capitalized_trimmed_person = TrimDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name # Outputs: Maximilian
