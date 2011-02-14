class BookComment < ActiveRecord::Base
  
  attr_accessible :description, :book_id

  belongs_to :book
   
end
