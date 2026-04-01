require 'securerandom'

class Book
  attr_reader :title, :author, :id

  def initialize(title, author)
    @id = SecureRandom.uuid
    @title = title
    @author = author
    @available = true
  end

  def to_s
    "#{@title}, #{@author}, #{@available}, #{@id}"
  end

  def available?
    @available
  end

  def borrow_book!
    raise "Book not available." unless available?
    @available = false
  end

  def return_book!
    raise "Book already returned." if available?
    @available = true
  end
  
  def update_title(new_title)
    raise "Invalid title." if new_title.strip.empty?
    @title = new_title
  end

  def update_author(new_author)
    raise "Invalid author." if new_author.strip.empty?
    @author = new_author
  end

end