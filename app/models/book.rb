

class Book < Media
  after_destroy :toto
  has_many :book_comments, :dependent => :destroy
  acts_as_cvi :table_name=>'tablebooks'  
  
  def toto
    debugger.log"qqqqqqqqqqqqqqqqqqqqqqqq"
    alert('hi ')
    a=BookComment.where("book_id=?",self.id);
    a.each do |b|
      b.destroy;
    end
  end
end
