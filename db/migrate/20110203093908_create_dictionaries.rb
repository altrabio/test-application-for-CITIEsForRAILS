class CreateDictionaries < ActiveRecord::Migration
  def self.up
    create_table :dictionaries do |t|
      
      t.string :lf
      t.string :lt

      #t.timestamps TO DELETE
    end
  CreateTheViewForCVI(Dictionary)
  end

  def self.down
    DropTheViewForCVI(Dictionary)
    drop_table :dictionaries
  end
end
