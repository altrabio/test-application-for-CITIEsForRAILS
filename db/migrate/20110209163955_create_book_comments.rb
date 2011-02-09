class CreateBookComments < ActiveRecord::Migration
  def self.up
    create_table :book_comments do |t|
      t.text :description
      t.integer :book_id

      t.timestamps
    end
    add_index :book_comments, :book_id
  end

  def self.down
    drop_table :book_comments
  end
end
