class CreateAudios < ActiveRecord::Migration
  def self.up
    create_table :audios do |t|      
      t.string :title
      t.string :genre
    end
     CreateTheViewForCITIEs(Audio) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCITIEs(Audio) #needed for CITIEsForRails
    drop_table :audios
  end
end
