
class Media < ActiveRecord::Base
  after_destroy :toto4
  before_destroy :bef4
  has_many :comments, :dependent => :destroy
 
  acts_as_cities #needed for CITIEsForRails
  
  def pricecategory
    if(price<75)
      return "A"
    else
      if(price<=125)
         return "B"
      else
        return "C"
      end
    end
  end
  
  
  def bef4
    puts("---->Before DESTROY CLASS media")
  end

  def toto4
    puts("---->AFTER DESTROY CLASS media")
  end
 
  def self.testPopulate
    
    a1=Media.new :name=>"init", :price=>112
    a1.save
    cpt=Media.find(:last).id
    cpt=cpt-1
    a1.name="mynameis#{cpt+1}"
    a1.price=112
    a2=Media.new :name=>"mynameis#{cpt+2}", :price=>23
    a3=Media.new :name=>"mynameis#{cpt+3}", :price=>54
    a4=Media.new :name=>"mynameis#{cpt+4}", :price=>154
    a5=Unknown.new :name=>"mynameis#{cpt+5}", :price=>29
    a6=Unknown.new :name=>"mynameis#{cpt+6}", :price=>157
    a7=Unknown.new :name=>"mynameis#{cpt+7}", :price=>62
    a8=Unknown.new :name=>"mynameis#{cpt+8}", :price=>73
    a9=Audio.new :name=>"mynameis#{cpt+9}", :price=>35, :title=>"mytitleis#{cpt+9}", :genre=> "mygenreis#{cpt+9}"
    a10=Audio.new :name=>"mynameis#{cpt+10}", :price=>35, :title=>"mytitleis#{cpt+10}", :genre=> "mygenreis#{cpt+10}"
    a11=Audio.new :name=>"mynameis#{cpt+11}", :price=>157, :title=>"mytitleis#{cpt+11}", :genre=> "mygenreis#{cpt+11}"
    a12=Audio.new :name=>"mynameis#{cpt+12}", :price=>86, :title=>"mytitleis#{cpt+12}", :genre=> "mygenreis#{cpt+12}"
    a13=Mp3.new :name=>"mynameis#{cpt+13}", :price=>17, :title=>"mytitleis#{cpt+13}", :genre=> "mygenreis#{cpt+13}"
    a14=Mp3.new :name=>"mynameis#{cpt+14}", :price=>164, :title=>"mytitleis#{cpt+14}", :genre=> "mygenreis#{cpt+14}"
    a15=Mp3.new :name=>"mynameis#{cpt+15}", :price=>88, :title=>"mytitleis#{cpt+15}", :genre=> "mygenreis#{cpt+15}"
    a16=Mp3.new :name=>"mynameis#{cpt+16}", :price=>153, :title=>"mytitleis#{cpt+16}", :genre=> "mygenreis#{cpt+16}"
    a17=Book.new :name=>"mynameis#{cpt+17}", :price=>115, :title=>"mytitleis#{cpt+17}", :author=> "myauthoris#{cpt+17}"
    a18=Book.new :name=>"mynameis#{cpt+18}", :price=>57, :title=>"mytitleis#{cpt+18}", :author=> "myauthoris#{cpt+18}"
    a19=Book.new :name=>"mynameis#{cpt+19}", :price=>57, :title=>"mytitleis#{cpt+19}", :author=> "myauthoris#{cpt+19}"
    a20=Book.new :name=>"mynameis#{cpt+20}", :price=>107, :title=>"mytitleis#{cpt+20}", :author=> "myauthoris#{cpt+20}"
    a21=Novel.new :name=>"mynameis#{cpt+21}", :price=>1, :title=>"mytitleis#{cpt+21}", :author=> "myauthoris#{cpt+21}", :summary=> "mysummaryis#{cpt+21}"
    a22=Novel.new :name=>"mynameis#{cpt+22}", :price=>185, :title=>"mytitleis#{cpt+22}", :author=> "myauthoris#{cpt+22}", :summary=> "mysummaryis#{cpt+22}"
    a23=Novel.new :name=>"mynameis#{cpt+23}", :price=>111, :title=>"mytitleis#{cpt+23}", :author=> "myauthoris#{cpt+23}", :summary=> "mysummaryis#{cpt+23}"
    a24=Novel.new :name=>"mynameis#{cpt+24}", :price=>195, :title=>"mytitleis#{cpt+24}", :author=> "myauthoris#{cpt+24}", :summary=> "mysummaryis#{cpt+24}"
    a25=Dictionary.new :name=>"mynameis#{cpt+25}", :price=>150, :title=>"mytitleis#{cpt+25}", :author=> "myauthoris#{cpt+25}", :lf=> "mylfis#{cpt+25}", :lt=> "mylfts#{cpt+25}"
    a26=Dictionary.new :name=>"mynameis#{cpt+26}", :price=>100, :title=>"mytitleis#{cpt+26}", :author=> "myauthoris#{cpt+26}", :lf=> "mylfis#{cpt+26}", :lt=> "mylfts#{cpt+26}"
    a27=Dictionary.new :name=>"mynameis#{cpt+27}", :price=>2, :title=>"mytitleis#{cpt+27}", :author=> "myauthoris#{cpt+27}", :lf=> "mylfis#{cpt+27}", :lt=> "mylfts#{cpt+27}"
    a28=Dictionary.new :name=>"mynameis#{cpt+28}", :price=>114, :title=>"mytitleis#{cpt+28}", :author=> "myauthoris#{cpt+28}", :lf=> "mylfis#{cpt+28}", :lt=> "mylfts#{cpt+28}"
    a29=PocketDictionary.new :name=>"mynameis#{cpt+29}", :price=>24, :title=>"mytitleis#{cpt+29}", :author=> "myauthoris#{cpt+29}", :lf=> "mylfis#{cpt+29}", :lt=> "mylfts#{cpt+29}"
    a30=PocketDictionary.new :name=>"mynameis#{cpt+30}", :price=>174, :title=>"mytitleis#{cpt+30}", :author=> "myauthoris#{cpt+30}", :lf=> "mylfis#{cpt+30}", :lt=> "mylfts#{cpt+30}"
    a31=PocketDictionary.new :name=>"mynameis#{cpt+31}", :price=>76, :title=>"mytitleis#{cpt+31}", :author=> "myauthoris#{cpt+31}", :lf=> "mylfis#{cpt+31}", :lt=> "mylfts#{cpt+31}"
    a32=PocketDictionary.new :name=>"mynameis#{cpt+32}", :price=>98, :title=>"mytitleis#{cpt+32}", :author=> "myauthoris#{cpt+32}", :lf=> "mylfis#{cpt+32}", :lt=> "mylfts#{cpt+32}"
    a33=Video.new :name=>"mynameis#{cpt+33}", :price=>90, :title=>"mytitleis#{cpt+33}", :genre=> "mygenreis#{cpt+33}"
    a34=Video.new :name=>"mynameis#{cpt+34}", :price=>33, :title=>"mytitleis#{cpt+34}", :genre=> "mygenreis#{cpt+34}"
    a35=Video.new :name=>"mynameis#{cpt+35}", :price=>159, :title=>"mytitleis#{cpt+35}", :genre=> "mygenreis#{cpt+35}"
    a36=Video.new :name=>"mynameis#{cpt+36}", :price=>111, :title=>"mytitleis#{cpt+36}", :genre=> "mygenreis#{cpt+36}"
    
    tabA=[]
    tabA<<a1
    tabA<<a2
    tabA<<a3
    tabA<<a4
    tabA<<a5
    tabA<<a6
    tabA<<a7
    tabA<<a8
    tabA<<a9
    tabA<<a10
    tabA<<a11
    tabA<<a12
    tabA<<a13
    tabA<<a14
    tabA<<a15
    tabA<<a16
    tabA<<a17
    tabA<<a18
    tabA<<a19
    tabA<<a20
    tabA<<a21
    tabA<<a22
    tabA<<a23
    tabA<<a24
    tabA<<a25
    tabA<<a26
    tabA<<a27
    tabA<<a28
    tabA<<a29
    tabA<<a30 
    tabA<<a31
    tabA<<a32
    tabA<<a33
    tabA<<a34
    tabA<<a35
    tabA<<a36


    tabA.each do |t|
      t.save
      (Comment.new :description=>"my first comment about #{t.class.name} with id #{t.id}", :media_id=>t.id).save
      (Comment.new :description=>"my second comment about #{t.class.name} with id #{t.id}", :media_id=>t.id).save
      if(t.class==Book ||t.class==Novel ||t.class==Dictionary ||t.class==PocketDictionary )
        (BookComment.new :description=>"my first book comment about #{t.class.name} with id #{t.id}", :book_id=>t.id).save
        (BookComment.new :description=>"my second book comment about #{t.class.name} with id #{t.id}", :book_id=>t.id).save        
      end
    end
if(false)
    c1=Comment.new :description=>"my first comment about media with id 1", :media_id=>1
    c2=Comment.new :description=>"my first comment about media with id 2", :media_id=>2
    c3=Comment.new :description=>"my first comment about media with id 3", :media_id=>3
    c4=Comment.new :description=>"my first comment about media with id 4", :media_id=>4
    c5=Comment.new :description=>"my first comment about media with id 5", :media_id=>5
    c6=Comment.new :description=>"my first comment about media with id 6", :media_id=>6
    c7=Comment.new :description=>"my first comment about media with id 7", :media_id=>7
    c8=Comment.new :description=>"my first comment about media with id 8", :media_id=>8
    c9=Comment.new :description=>"my first comment about media with id 9", :media_id=>9
    c10=Comment.new :description=>"my first comment about media with id 10", :media_id=>10
    c11=Comment.new :description=>"my first comment about media with id 11", :media_id=>11
    c12=Comment.new :description=>"my first comment about media with id 12", :media_id=>12
    c13=Comment.new :description=>"my first comment about media with id 13", :media_id=>13
    c14=Comment.new :description=>"my first comment about media with id 14", :media_id=>14
    c15=Comment.new :description=>"my first comment about media with id 15", :media_id=>15
    c16=Comment.new :description=>"my first comment about media with id 16", :media_id=>16
    c17=Comment.new :description=>"my first comment about media with id 17", :media_id=>17
    c18=Comment.new :description=>"my first comment about media with id 18", :media_id=>18
    c19=Comment.new :description=>"my first comment about media with id 19", :media_id=>19
    c20=Comment.new :description=>"my first comment about media with id 20", :media_id=>20
    c21=Comment.new :description=>"my first comment about media with id 21", :media_id=>21
    c22=Comment.new :description=>"my first comment about media with id 22", :media_id=>22
    c23=Comment.new :description=>"my first comment about media with id 23", :media_id=>23
    c24=Comment.new :description=>"my first comment about media with id 24", :media_id=>24
    c25=Comment.new :description=>"my first comment about media with id 25", :media_id=>25
    c26=Comment.new :description=>"my first comment about media with id 26", :media_id=>26
    c27=Comment.new :description=>"my first comment about media with id 27", :media_id=>27
    c28=Comment.new :description=>"my first comment about media with id 28", :media_id=>28
    c29=Comment.new :description=>"my first comment about media with id 29", :media_id=>29
    c30=Comment.new :description=>"my first comment about media with id 30", :media_id=>30
    c31=Comment.new :description=>"my first comment about media with id 31", :media_id=>31
    c32=Comment.new :description=>"my first comment about media with id 32", :media_id=>32
    c33=Comment.new :description=>"my first comment about media with id 33", :media_id=>33
    c34=Comment.new :description=>"my first comment about media with id 34", :media_id=>34
    c35=Comment.new :description=>"my first comment about media with id 35", :media_id=>35
    c36=Comment.new :description=>"my first comment about media with id 36", :media_id=>36
    c37=Comment.new :description=>"my second comment about media with id 1", :media_id=>1
    c38=Comment.new :description=>"my second comment about media with id 2", :media_id=>2
    c39=Comment.new :description=>"my second comment about media with id 3", :media_id=>3
    c40=Comment.new :description=>"my second comment about media with id 4", :media_id=>4
    c41=Comment.new :description=>"my second comment about media with id 5", :media_id=>5
    c42=Comment.new :description=>"my second comment about media with id 6", :media_id=>6
    c43=Comment.new :description=>"my second comment about media with id 7", :media_id=>7
    c44=Comment.new :description=>"my second comment about media with id 8", :media_id=>8
    c45=Comment.new :description=>"my second comment about media with id 9", :media_id=>9
    c46=Comment.new :description=>"my second comment about media with id 10", :media_id=>10
    c47=Comment.new :description=>"my second comment about media with id 11", :media_id=>11
    c48=Comment.new :description=>"my second comment about media with id 12", :media_id=>12
    c49=Comment.new :description=>"my second comment about media with id 13", :media_id=>13
    c50=Comment.new :description=>"my second comment about media with id 14", :media_id=>14
    c51=Comment.new :description=>"my second comment about media with id 15", :media_id=>15
    c52=Comment.new :description=>"my second comment about media with id 16", :media_id=>16
    c53=Comment.new :description=>"my second comment about media with id 17", :media_id=>17
    c54=Comment.new :description=>"my second comment about media with id 18", :media_id=>18
    c55=Comment.new :description=>"my second comment about media with id 19", :media_id=>19
    c56=Comment.new :description=>"my second comment about media with id 20", :media_id=>20
    c57=Comment.new :description=>"my second comment about media with id 21", :media_id=>21
    c58=Comment.new :description=>"my second comment about media with id 22", :media_id=>22
    c59=Comment.new :description=>"my second comment about media with id 23", :media_id=>23
    c60=Comment.new :description=>"my second comment about media with id 24", :media_id=>24
    c61=Comment.new :description=>"my second comment about media with id 25", :media_id=>25
    c62=Comment.new :description=>"my second comment about media with id 26", :media_id=>26
    c63=Comment.new :description=>"my second comment about media with id 27", :media_id=>27
    c64=Comment.new :description=>"my second comment about media with id 28", :media_id=>28
    c65=Comment.new :description=>"my second comment about media with id 29", :media_id=>29
    c66=Comment.new :description=>"my second comment about media with id 30", :media_id=>30
    c67=Comment.new :description=>"my second comment about media with id 31", :media_id=>31
    c68=Comment.new :description=>"my second comment about media with id 32", :media_id=>32
    c69=Comment.new :description=>"my second comment about media with id 33", :media_id=>33
    c70=Comment.new :description=>"my second comment about media with id 34", :media_id=>34
    c71=Comment.new :description=>"my second comment about media with id 35", :media_id=>35
    c72=Comment.new :description=>"my second comment about media with id 36", :media_id=>36


    c1.save
    c2.save
    c3.save
    c4.save
    c5.save
    c6.save
    c7.save
    c8.save
    c9.save
    c10.save
    c11.save
    c12.save
    c13.save
    c14.save
    c15.save
    c16.save
    c17.save
    c18.save
    c19.save
    c20.save
    c21.save
    c22.save
    c23.save
    c24.save
    c25.save
    c26.save
    c27.save
    c28.save
    c29.save
    c30.save
    c31.save
    c32.save
    c33.save
    c34.save
    c35.save
    c36.save
    c37.save
    c38.save
    c39.save
    c40.save
    c41.save
    c42.save
    c43.save
    c44.save
    c45.save
    c46.save
    c47.save
    c48.save
    c49.save
    c50.save
    c51.save
    c52.save
    c53.save
    c54.save
    c55.save
    c56.save
    c57.save
    c58.save
    c59.save
    c60.save
    c61.save
    c62.save
    c63.save
    c64.save
    c65.save
    c66.save
    c67.save
    c68.save
    c69.save
    c70.save
    c71.save
    c72.save
end

   end
end
