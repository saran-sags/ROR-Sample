#********************************************************************************
# File Name : application_controller.rb

# Project Name : Post Office

# Module Name : ApplicationController

# Description of purpose of file: to check for authentication and for session login and logout

#Revision Date : 25-03-2013
#*********************************************************************************

class ApplicationController < ActionController::Base
  before_filter :authenticate

  protect_from_forgery
  protected
   # Returns the currently logged in user or nil if there isn't one

     def current_user
       return unless session[:user_id]
       @current_user ||= User.find_by_id(session[:user_id])
    end # def current_user


     helper_method :current_user
 

 # Apply as a before_filter on any controller you want to protect
    def authenticate
       logged_in? ? true : access_denied
    end #def authenticate

# Predicate method to test for a logged in user
    def logged_in?
        current_user.is_a? User
    end #def logged_in?
  
    helper_method :logged_in?

    def access_denied
       redirect_to :controller => "sessions", :action => "new" 
       flash[:notice] = "please login to continue"
       return false

    end #def access_denied
end
