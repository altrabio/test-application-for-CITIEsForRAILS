class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      
      t.string :title
      t.string :genre

     # t.timestamps TO DELETE
    end
   
    CreateTheViewForCVI(Video)
  end

  def self.down
    DropTheViewForCVI(Video)
    drop_table :videos
  end
end
