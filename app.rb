# frozen_string_literal: true

require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_book
    print "\nTitle: "
    name = gets.chomp
    print 'Author: '
    author = gets.chomp
    new_book = Book.new(name, author)
    @books << new_book
    puts "Book created successfully\n\n"
  end

  def create_person
    puts "\nDo you want to Create a Student (1) or a Teacher (2)?[input the number]:"
    create_option = gets.chomp.to_i
    if create_option == 1
      create_student
    elsif create_option == 2
      create_teacher
    else
      puts 'Invalid Character'
    end
  end

  def create_student
    print 'age: '
    student_age = gets.chomp.to_i
    print 'name: '
    student_name = gets.chomp
    print 'Has parent permission? [Y/N]'
    classroom = Classroom.new('class 1')
    gets.chomp.downcase
    new_student = Student.new(classroom, student_age, student_name)
    @people << new_student
    puts "Person created successfully\n\n"
  end

  def create_teacher
    print 'age: '
    teacher_age = gets.chomp.to_i
    print 'name: '
    teacher_name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    new_teacher = Teacher.new(teacher_name, teacher_age, specialization)
    @people << new_teacher
    puts "Person created successfully\n\n"
  end

  def create_rental
    if !@people.empty? && !@books.empty?
      puts 'Select a book from the following list by a number:'
      list_all_books
      book_index = gets.chomp.to_i
      selected_book = @books[book_index]
      puts 'Select a person from the following list by a number:'
      list_all_people
      people_index = gets.chomp.to_i
      selected_person = @people[people_index]
      print 'Date: '
      selected_date = gets.chomp
      new_rental = Rental.new(selected_date, selected_person, selected_book)
      @rentals << new_rental
      puts "Rental created successfully\n\n"
    else
      puts 'Please add at least one book and one student.'
    end
  end

  def list_all_books
    if @books.empty?
      puts 'No books added'
    else
      puts '---------- LIST OF BOOKS-------------'
      @books.each_with_index do |book, index|
        puts "#{index} - Title: #{book.title}, Author: #{book.author}\n\n"
      end
    end
  end

  def list_all_people
    if @people.empty?
      puts "\n\nno person added"

    else
      puts '------- LIST OF People -------------'
      @people.each_with_index do |person, index|
        role = if person.is_a?(Student)
                 '[Student]'
               else
                 '[Teacher]'
               end
        puts "#{index} - #{role} - Name: #{person.name}, ID: #{person.id}, Age: #{person.age}\n\n"
      end
    end
  end

  def list_all_rentals
    if @rentals.empty?
      puts 'No rentals available at the moment.'
    else
      print 'To view your rentals, enter your ID: '
      id = gets.chomp.to_i
      rental = @rentals.select { |rend| rend.person.id == id }

      if rental.empty?
        puts 'No records for that ID.'
      else
        puts 'Here are your records:'
        puts ''
        rental.each_with_index do |record, index|
          puts "#{index + 1}| Date: #{record.date} | Borrower: #{record.person.name} | " \
               "Status: #{record.person.class} | Borrowed book: \"#{record.book.title}\" by #{record.book.author}"
        end
      end
    end
  end
end
