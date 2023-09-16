require_relative 'app'

def main
  books = [] # Initialize an array to store books
  people = [] # Initialize an array to store people

  loop do
    puts 'Choose an option:'
    puts '1. List books'
    puts '2. List people'
    puts '3. Create person'
    puts '4. Create book'
    puts '5. Create rental'
    puts '6. List rentals for a person'
    puts '7. Quit'

    choice = gets.chomp.to_i

    case choice
    when 1
      list_books(books)
    when 2
      list_people(people)
    # Add more cases for other options
    when 7
      break
    else
      puts 'Invalid choice. Please try again.'
    end
  end
end

# Call the main method to start the app
main
