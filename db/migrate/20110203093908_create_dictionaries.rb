class CreateDictionaries < ActiveRecord::Migration
  def self.up
    create_table :dictionaries do |t|      
      t.string :lf
      t.string :lt
    end
  CreateTheViewForCVI(Dictionary) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCVI(Dictionary) #needed for CITIEsForRails
    drop_table :dictionaries
  end
end
