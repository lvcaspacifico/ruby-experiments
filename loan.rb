class Loan
  attr_reader :id, :book, :user, :due_date, :returned_at
  
  def initialize(book, user)
    @book = book
    @user = user
    @due_date = (Time.now + (7 * 24 * 60 * 60)) # due in 7 days
  end

  def return_book!
    @returned_at = Time.now
  end

  def loan_was_returned?
    !@returned_at.nil?
  end

  def is_loan_overdue?
    @due_date < Time.now 
  end
end