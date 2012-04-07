class Micropost < ActiveRecord::Base
   attr_accessible :content
   
   validates :content, :presence => true,
                       :length => { :maximum => 155 } 
end
