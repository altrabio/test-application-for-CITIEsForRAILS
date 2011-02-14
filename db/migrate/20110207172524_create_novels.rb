class CreateNovels < ActiveRecord::Migration
  def self.up
    create_table :novels do |t|      
      t.string :summary
      
    end
  CreateTheViewForCVI(Novel) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCVI(Novel) #needed for CITIEsForRails
    drop_table :novels
  end
end
