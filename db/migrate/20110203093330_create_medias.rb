class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string :type #needed for CITIEsForRails
      t.string :name
      t.integer :price
      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
