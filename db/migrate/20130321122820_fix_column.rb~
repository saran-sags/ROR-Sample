#********************************************************************************
# File Name : 20130321122820_fix_column

# Project Name : Post Office

# Module Name : FixColumn

# Description of purpose of file: to change type of field as float in rates table

#Revision Date : 22-03-2013
#*********************************************************************************

class FixColumn < ActiveRecord::Migration
  def self.up
    change_column :rates, :ordinary_post, :float
    change_column :rates, :speed_post, :float
  end

  def down
    change_column :rates, :ordinary_post, :float
    change_column :rates, :speed_post, :float
  end
end
