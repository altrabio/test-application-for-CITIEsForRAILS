class Unknown < Media
  
  after_destroy :toto8
  before_destroy :bef8
 
  def toto8
   puts("---->AFTER DESTROY CLASS unknown")
  end
  
  def bef8
   puts("---->Before DESTROY CLASS unknown")
  end
  
end
