class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :description
      t.integer :media_id

      t.timestamps
    end
    
    add_index :comments, :media_id
  end

  def self.down
    drop_table :comments
  end
end
