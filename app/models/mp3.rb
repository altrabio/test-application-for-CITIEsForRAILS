
class Mp3 < Audio
 
  after_destroy :toto5
  before_destroy :bef5

  def toto5
   puts("---->AFTER DESTROY CLASS mp3")
  end
 
  def bef5
   puts("---->Before DESTROY CLASS mp3")
  end


end
