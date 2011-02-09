
class Media < ActiveRecord::Base
  
   has_many :comments, :dependent => :destroy
  acts_as_cvi
  
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
  
  
  def self.testPopulate



    a1=Media.new :name=>"mynameis1", :price=>136
    a2=Media.new :name=>"mynameis2", :price=>140
    a3=Media.new :name=>"mynameis3", :price=>91
    a4=Media.new :name=>"mynameis4", :price=>177
    a5=Unknown.new :name=>"mynameis5", :price=>128
    a6=Unknown.new :name=>"mynameis6", :price=>181
    a7=Unknown.new :name=>"mynameis7", :price=>183
    a8=Unknown.new :name=>"mynameis8", :price=>122
    a9=Audio.new :name=>"mynameis9", :price=>95, :title=>"mytitleis9", :genre=> "mygenreis9"
    a10=Audio.new :name=>"mynameis10", :price=>198, :title=>"mytitleis10", :genre=> "mygenreis10"
    a11=Audio.new :name=>"mynameis11", :price=>111, :title=>"mytitleis11", :genre=> "mygenreis11"
    a12=Audio.new :name=>"mynameis12", :price=>184, :title=>"mytitleis12", :genre=> "mygenreis12"
    a13=Mp3.new :name=>"mynameis13", :price=>130, :title=>"mytitleis13", :genre=> "mygenreis13"
    a14=Mp3.new :name=>"mynameis14", :price=>36, :title=>"mytitleis14", :genre=> "mygenreis14"
    a15=Mp3.new :name=>"mynameis15", :price=>92, :title=>"mytitleis15", :genre=> "mygenreis15"
    a16=Mp3.new :name=>"mynameis16", :price=>29, :title=>"mytitleis16", :genre=> "mygenreis16"
    a17=Book.new :name=>"mynameis17", :price=>96, :title=>"mytitleis17", :author=> "myauthoris17"
    a18=Book.new :name=>"mynameis18", :price=>49, :title=>"mytitleis18", :author=> "myauthoris18"
    a19=Book.new :name=>"mynameis19", :price=>167, :title=>"mytitleis19", :author=> "myauthoris19"
    a20=Book.new :name=>"mynameis20", :price=>68, :title=>"mytitleis20", :author=> "myauthoris20"
    a21=Novel.new :name=>"mynameis21", :price=>116, :title=>"mytitleis21", :author=> "myauthoris21", :summary=> "mysummaryis21"
    a22=Novel.new :name=>"mynameis22", :price=>182, :title=>"mytitleis22", :author=> "myauthoris22", :summary=> "mysummaryis22"
    a23=Novel.new :name=>"mynameis23", :price=>70, :title=>"mytitleis23", :author=> "myauthoris23", :summary=> "mysummaryis23"
    a24=Novel.new :name=>"mynameis24", :price=>74, :title=>"mytitleis24", :author=> "myauthoris24", :summary=> "mysummaryis24"
    a25=Dictionary.new :name=>"mynameis25", :price=>93, :title=>"mytitleis25", :author=> "myauthoris25", :lf=> "mylfis25", :lt=> "mylfts25"
    a26=Dictionary.new :name=>"mynameis26", :price=>39, :title=>"mytitleis26", :author=> "myauthoris26", :lf=> "mylfis26", :lt=> "mylfts26"
    a27=Dictionary.new :name=>"mynameis27", :price=>135, :title=>"mytitleis27", :author=> "myauthoris27", :lf=> "mylfis27", :lt=> "mylfts27"
    a28=Dictionary.new :name=>"mynameis28", :price=>86, :title=>"mytitleis28", :author=> "myauthoris28", :lf=> "mylfis28", :lt=> "mylfts28"
    a29=PocketDictionary.new :name=>"mynameis29", :price=>121, :title=>"mytitleis29", :author=> "myauthoris29", :lf=> "mylfis29", :lt=> "mylfts29"
    a30=PocketDictionary.new :name=>"mynameis30", :price=>198, :title=>"mytitleis30", :author=> "myauthoris30", :lf=> "mylfis30", :lt=> "mylfts30"
    a31=PocketDictionary.new :name=>"mynameis31", :price=>47, :title=>"mytitleis31", :author=> "myauthoris31", :lf=> "mylfis31", :lt=> "mylfts31"
    a32=PocketDictionary.new :name=>"mynameis32", :price=>158, :title=>"mytitleis32", :author=> "myauthoris32", :lf=> "mylfis32", :lt=> "mylfts32"
    a33=Video.new :name=>"mynameis29", :price=>161, :title=>"mytitleis29", :genre=> "mygenreis29"
    a34=Video.new :name=>"mynameis30", :price=>197, :title=>"mytitleis30", :genre=> "mygenreis30"
    a35=Video.new :name=>"mynameis31", :price=>75, :title=>"mytitleis31", :genre=> "mygenreis31"
    a36=Video.new :name=>"mynameis32", :price=>131, :title=>"mytitleis32", :genre=> "mygenreis32"




    a1.save
    a2.save
    a3.save
    a4.save
    a5.save
    a6.save
    a7.save
    a8.save
    a9.save
    a10.save
    a11.save
    a12.save
    a13.save
    a14.save
    a15.save
    a16.save
    a17.save
    a18.save
    a19.save
    a20.save
    a21.save
    a22.save
    a23.save
    a24.save
    a25.save
    a26.save
    a27.save
    a28.save
    a29.save
    a30.save
    a31.save
    a32.save
    a33.save
    a34.save
    a35.save
    a36.save

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
