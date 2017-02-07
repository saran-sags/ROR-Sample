#********************************************************************************
# File Name : card_detail.rb

# Project Name : Post Office

# Module Name : cardDetail

# Description of purpose of file: validates card details with sender and receiver details 

#Revision Date : 20-03-2013
#*********************************************************************************

class CardDetail < ActiveRecord::Base

#validates card details with sender and receiver details 
  attr_accessible :title, :body , :sender_name , :sender_address ,:sender_city ,:sender_pincode ,:sender_phone_no, :receiver_name ,:receiver_address , 
:receiver_city , :receiver_pincode , :receiver_state ,:receiver_phone_no ,:card_type, :sender_state ,:sender_email, :weight

#validates sender details
  validates :sender_name , :presence => true
  validates :sender_address , :presence => true
  validates :sender_city , :presence => true
  validates_numericality_of :sender_pincode , :presence => true ,:length => {:within => 2..6}
  validates :sender_state , :presence => true
  validates_numericality_of :sender_phone_no , :presence => true , :length => {:is => 10}

 #validates receiver details  
  validates :receiver_name , :presence => true
  validates :receiver_address , :presence => true
  validates :receiver_city , :presence => true
  validates_numericality_of :receiver_pincode , :presence => true ,:length => {:within => 2..6}
  validates :receiver_state , :presence => true
  validates_numericality_of :receiver_phone_no , :presence => true , :length => {:is => 10}

  validates :card_type , :presence => true
end
