class Book
  attr_accessor :title, :author, :available
  def initialize(title,author, available)
    @title = title
    @author = author
    @available = available
  end
end

class Library
  attr_accessor :books, :users

  def initialize(books, users)
    @books =[]
    @users = []
  end

  def add_book(book)
    books << book
    puts "Book #{book} has been added to the library"
  end

  def register_user(user)
    users << user
    puts "User #{user} registered"
  end
  
  def available_books
    all_books =     
    books.select(&:available).each { |book| puts "- #{book.title} by #{book.author}" }
    return all_books
  end
  
  
end



class User
  attr_accessor :name, :borrowed_books
  def initialize(name, borrowed_books)
    @name = name
    @borrowed_books = []
  end

  def borrow_book(book)
    if book.available
      book.available = false
      borrowed_books << book
      puts "#{name} borrowed '#{book.title}'"
    else
      puts "'#{book.title}' is not available."
    end
  end

  def return_book(book)
    if borrowed_books.delete(book)
      book.available = true
      puts "#{name} returned '#{book.title}'"
    else
      puts "#{name} does not have '#{book.title}'"
    end
  end

  
end

