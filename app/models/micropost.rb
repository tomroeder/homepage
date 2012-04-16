class Micropost < ActiveRecord::Base
   attr_accessible :content, :email
   
   email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     
   validates :content, :presence => true,
                       :length => { :maximum => 155 }
 
   validates :email, :presence => true,
                    :format   => { :with => email_regex }                    
end
