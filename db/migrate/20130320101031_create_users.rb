#********************************************************************************
# File Name : 20130320101031_create_users

# Project Name : Post Office

# Module Name : CreateUsers

# Description of purpose of file: to create table for admin with corresponding details

#Revision Date : 20-03-2013
#*********************************************************************************


class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :address
      t.string :city
      t.integer :pincode
      t.string :state
      t.integer :contact_no
      t.timestamps
    end
  end

  def self.down
    drop_table :users  
  end
end
