#********************************************************************************
# File Name : 20130320111438_add_sessions_table

# Project Name : Post Office

# Module Name : AddSessionsTable 

# Description of purpose of file: to create table for storing session id

#Revision Date : 20-03-2013
#*********************************************************************************
class AddSessionsTable < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :session_id, :null => false
      t.text :data
      t.timestamps
    end

    add_index :sessions, :session_id
    add_index :sessions, :updated_at
  end
end
