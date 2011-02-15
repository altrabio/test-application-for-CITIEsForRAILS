class CreateDictionaries < ActiveRecord::Migration
  def self.up
    create_table :dictionaries do |t|      
      t.string :lf
      t.string :lt
    end
  CreateTheViewForCITIEs(Dictionary) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCITIEs(Dictionary) #needed for CITIEsForRails
    drop_table :dictionaries
  end
end
