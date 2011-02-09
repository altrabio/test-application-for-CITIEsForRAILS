class CreateNovels < ActiveRecord::Migration
  def self.up
    create_table :novels do |t|
      
      t.string :summary
      
    end
  CreateTheViewForCVI(Novel)
  end

  def self.down
    DropTheViewForCVI(Novel)
    drop_table :novels
  end
end
