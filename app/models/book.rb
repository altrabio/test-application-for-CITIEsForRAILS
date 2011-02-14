

class Book < Media
  acts_as_cvi :table_name=>'books'  #needed for CITIEsForRails
  
  has_many :book_comments, :dependent => :destroy
  after_destroy :toto2
  after_destroy :nina2
  before_destroy :bef2
  
  
  def toto2
     puts("---->AFTER DESTROY CLASSbook")
  end
  
  def nina2
    puts("---->AFTER DESTROY 2 CLASS book")
  end
  
  def bef2
    puts("---->Before DESTROY CLASS book")
  end
 

end
