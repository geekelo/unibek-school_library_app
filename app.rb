require_relative 'person'
require_relative 'book'
require_relative 'rental'

# Define your methods here
# For example:

def list_books(books)
  books.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
  end
end

def list_people(people)
  people.each do |person|
    puts "Name: #{person.name}, Role: #{person.role}"
  end
end

# Define other methods as required.
