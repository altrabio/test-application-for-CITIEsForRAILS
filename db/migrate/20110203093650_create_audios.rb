class CreateAudios < ActiveRecord::Migration
  def self.up
    create_table :audios do |t|
      
      t.string :title
      t.string :genre

      #t.timestamps TO DELETE
    end
     CreateTheViewForCVI(Audio)
  end

  def self.down
    DropTheViewForCVI(Audio)
    drop_table :audios
  end
end
