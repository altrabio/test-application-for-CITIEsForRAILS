class Audio < Media
  after_destroy :toto1
  before_destroy :bef1
  
  def toto1
    puts("---->AFTER DESTROY CLASS audio")
  end
  def bef1
    puts("---->Before DESTROY CLASS audio")
  end
  
  acts_as_cvi #needed for CITIEsForRails
  
end
