class CreateNovels < ActiveRecord::Migration
  def self.up
    create_table :novels do |t|      
      t.string :summary
      
    end
  CreateTheViewForCITIEs(Novel) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCITIEs(Novel) #needed for CITIEsForRails
    drop_table :novels
  end
end
