
class Video < Media
  
  acts_as_cvi #needed for CITIEsForRails

  after_destroy :toto
  before_destroy :bef

  def toto
    puts("---->AFTER DESTROY DE CLASS video")
  end

  def bef
    puts("---->Before DESTROY DE CLASS video")
  end
  
  
end
