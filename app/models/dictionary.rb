
class Dictionary < Book
  after_destroy :toto3
  before_destroy :bef3
  
  def toto3
    puts("---->AFTER DESTROY CLASS dico ")
  end
  
  def bef3
    puts("---->Before DESTROY CLASS dico")
  end

 acts_as_cvi #needed for CITIEsForRails

end
