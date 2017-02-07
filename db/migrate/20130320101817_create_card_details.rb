#********************************************************************************
# File Name : 20130320101817_create_card_details

# Project Name : Post Office

# Module Name : CreateCardDetails 

# Description of purpose of file: to create table for card details with sender and receiver 
#                                details and card type ,weight,rate,amount
#Revision Date : 20-03-2013
#*********************************************************************************

class CreateCardDetails < ActiveRecord::Migration

#to get card details 
  def self.up
    create_table :card_details do |t|
      t.string :card_id
      t.string :sender_name
      t.string :sender_address
      t.string :sender_city
      t.integer :sender_pincode
      t.string :sender_state
      t.string :sender_email
      t.integer :sender_phone_no 
      
      t.string :receiver_name
      t.string :receiver_address
      t.string :receiver_city
      t.integer :receiver_pincode
      t.string :receiver_state
      t.integer :receiver_phone_no 
 
      t.string :status
      t.string :type
      t.integer :rate
      t.integer :weight
      t.integer :amount
      t.timestamps
    end
  end

#to drop card_details table

  def self.down
    drop_table :card_details 
  end
end
