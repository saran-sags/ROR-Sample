#********************************************************************************
# File Name : rate.rb

# Project Name : Post Office

# Module Name : Rate

# Description of purpose of file: validates whether the given rats for ordinary and speed post are integer 

#Revision Date : 20-03-2013
#*********************************************************************************

class Rate < ActiveRecord::Base

#validates whether the given rats for ordinary and speed post are integer 
  # attr_accessible :title, :body
 validates_numericality_of :ordinary_post
 validates_numericality_of :speed_post
end
