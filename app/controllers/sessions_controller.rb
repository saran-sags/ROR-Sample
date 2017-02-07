#********************************************************************************
# File Name : sessions_controller.rb

# Project Name : Post Office

# Module Name : SessionsController

# Description of purpose of file: 

#*********************************************************************************

class SessionsController < ApplicationController
before_filter :authenticate, :except => [:new,:create]

#to validate email and password for admin login using session
  def create

      if params[:email].blank? or params[:password].blank?
              flash[:notice] = "Email or Password should not be blank"
              redirect_to :action => "new"
      else
         user = User.find_by_email(params[:email])

            if user.blank?
               flash[:notice] = " Invalid Email"
               redirect_to :action => "new"

            else
               user = User.find_by_email(params[:email])
               if user.password == params[:password]
                 session[:user_id] = user.id
                 session[:name] = user.name
                 flash[:notice] = "Logged in successfully"
	         redirect_to :controller => "admin" ,:action => "home" 
               else
                 flash[:notice] = "Invalid login/password combination"
                 redirect_to :action => "new" 
               end #if user.password == params[:password]

            end #   if user.blank?

      end # if params[:email].blank? or params[:password].blank?

  end # def create

#to validate email and password for admin login using session  

  def logout    
      reset_session
      flash[:notice] = "Logged out successfully"
      redirect_to :action => "new" 
  end  #def logout

end #class SessionsController < ApplicationController
