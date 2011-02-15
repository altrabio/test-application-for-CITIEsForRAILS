class Novel < Book

  acts_as_cities #needed for CITIEsForRails
 
  after_destroy :toto6
  before_destroy :bef6

  def toto6
   puts("---->AFTER DESTROY CLASS novel")
  end
  
  def bef6
   puts("---->Before DESTROY CLASS novel")
  end

end
