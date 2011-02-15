class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|      
      t.string :title
      t.string :genre
    end   
    CreateTheViewForCITIEs(Video) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCITIEs(Video) #needed for CITIEsForRails
    drop_table :videos
  end
end
