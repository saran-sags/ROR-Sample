#********************************************************************************
# File Name : user.rb

# Project Name : Post Office

# Module Name : User

# Description of purpose of file:  to validate admin details 

#*********************************************************************************

class User < ActiveRecord::Base
# to validate admin details 
  # attr_accessible :title, :body 

  validates :name ,:presence => true  
  validates :email ,:presence => true
  validates :password ,:presence => true ,:length => {:within => 6..20},:confirmation => true
  validates :address ,:presence => true  
  validates :city ,:presence => true
  validates_numericality_of :pincode ,:presence => true, :length => {:within =>2..6} 
  validates :state ,:presence => true
  validates_numericality_of  :contact_no ,:presence => true,:length => {:is =>10}

end
