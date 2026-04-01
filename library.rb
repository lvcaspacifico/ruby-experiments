require_relative 'book'
require_relative 'loan'
require_relative 'user'

class Library
  attr_reader :books, :users, :loans

  def initialize
    @books = []
    @users = []
    @loans = []
  end

  def add_new_book(book)
    @books << book
  end

  def add_new_user(user)
    @users << user
  end

  def add_loan(user, book)
    raise "User already hit limit of loans (3 loans)" if user.loans.lenght == 3
    raise "Book already loaned by another user" if !book.available?
  end

end

livro = Book.new("Mithology", "Edith Hamilton")
livro2 = Book.new("Mithology 2", "Edith Hamilton")
livraria = Library.new()

livraria.add_new_book(livro)
livraria.add_new_book(livro2)

puts livraria.books