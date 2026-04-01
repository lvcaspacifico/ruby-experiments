require 'securerandom'

class User
  attr_reader :id, :name, :loans

  def initialize(name)
    @id = SecureRandom.uuid
    @name = name
    @loans = []
  end

  def borrow_book(book, library)
    # library needs to do the due process
  end

  def return_book(book, library)
    # library needs to do the due process
  end

  def get_active_loans
    @loans
  end

  def to_s
    "#{id} | #{@name} | #{@loans}"  
  end

end