require_relative 'app'

def display_menu
  puts 'Choose an option:'
  puts '1. List books'
  puts '2. List people'
  puts '3. Create person'
  puts '4. Create book'
  puts '5. Create rental'
  puts '6. List rentals for a person'
  puts '7. Quit'
end
my_class = App.new

def main(my_class)
  menu_methods = {
    1 => 'list_all_books',
    2 => 'list_all_people',
    3 => 'create_person',
    4 => 'create_book',
    5 => 'create_rental',
    6 => 'list_all_rentals',
    7 => 'exit'
  }
  display_menu
  choice = gets.chomp.to_i
  if choice == 7
    exit
  else
    my_class.send(menu_methods[choice])
    main(my_class)
  end
end
main(my_class)
