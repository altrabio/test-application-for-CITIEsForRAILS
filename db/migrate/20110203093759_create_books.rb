class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :title
      t.string :author      
      end
    
  CreateTheViewForCVI(Book) #needed for CITIEsForRails
  end

  def self.down
    DropTheViewForCVI(Book) #needed for CITIEsForRails
    drop_table :books
  end
end
