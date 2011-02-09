
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


   end
end
