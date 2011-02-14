class PocketDictionary < Dictionary
  
  after_destroy :toto7
  after_destroy :nina7
  before_destroy :bef7

  def toto7
   puts("---->AFTER DESTROY CLASS pocket")
  end
 
  def nina7
    puts("---->AFTER DESTROY 2 CLASS pocket")
  end
  
  def bef7
    puts("---->Before DESTROY CLASS pocket")
  end
 
end
