#********************************************************************************
# File Name : 20130320103025_create_rates

# Project Name : Post Office

# Module Name : CreateRates 

# Description of purpose of file: to create table for card rates

#Revision Date : 20-03-2013
#*********************************************************************************

class CreateRates < ActiveRecord::Migration

# to get cost for ordinary and speed post and save in rates table
  def self.up
    create_table :rates do |t|
      t.integer :ordinary_post
      t.integer :speed_post
      t.timestamps
    end
  end

#to drop rates table 
  def self.down
    drop_table :rates 
  end
end
