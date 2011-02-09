class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :tablebooks do |t|
      
      t.string :title
      t.string :author

     # t.timestamps TO DELETE
    end
    
    CreateTheViewForCVI(Book)
  end

  def self.down
    DropTheViewForCVI(Book)
    drop_table :books
  end
end
