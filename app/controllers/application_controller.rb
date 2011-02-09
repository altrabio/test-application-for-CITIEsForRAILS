class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :initPEJ #this filter is there to prevent some class definition lacks within Development Environment
                          # it is totally useless for Production Environment
  
  
  
  def initPEJ
    a=Media.new
    a=Book.new
    a=Audio.new
    a=Mp3.new
    a=Video.new
    a=Dictionary.new
    a=PocketDictionary.new
    a=Unknown.new    
    a=Novel.new    
  end
  
end
