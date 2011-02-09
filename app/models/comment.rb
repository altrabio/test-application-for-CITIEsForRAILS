class Comment < ActiveRecord::Base
  
  attr_accessible :description, :media_id
  
  belongs_to :media
end
