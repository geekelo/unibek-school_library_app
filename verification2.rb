require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'person'
require_relative 'rental'

# Create a Classroom
classroom = Classroom.new('A101')

# Create Students
student1 = Student.new('John Doe')
student2 = Student.new('Jane Doe')

# Add students to the classroom
classroom.add_student(student1)
classroom.add_student(student2)

# Create Books
book1 = Book.new('Book 1', 'Author 1')
book2 = Book.new('Book 2', 'Author 2')

# Create a Person
person = Person.new('Alice Smith')

# Rent books
Rental.new('2023-09-14', person, book1)
Rental.new('2023-09-15', person, book2)

# Access relationships
puts "Classroom label: #{classroom.label}"
puts "Students in the classroom: #{classroom.students.map(&:name).join(', ')}"
puts "Books rented by #{person.name}: #{person.rentals.map { |rental| "#{rental.book.title} by #{rental.book.author}" }.join(', ')}"
