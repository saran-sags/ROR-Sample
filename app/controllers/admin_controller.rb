#********************************************************************************
# File Name : admin_controller.rb

# Project Name : Post Office

# Module Name : AdminController

# Description of purpose of file: to get admin details from user table and to display for edit profile,
#                                 to display status for sender by validating card id and contact no,  
#                                 to update admin profile and to change password,
#				  to display the card details by search process,to edit card rates
#				  to add new cards with sender and receiver details and with corresponding type
#				  to display admin password by validating admin email and contact no

#*********************************************************************************


class AdminController < ApplicationController
  before_filter :authenticate, :except => [:forget_password,:password,:view_status,:card_status]
layout 'post_office'

#to get admoin details from user table and to display for edit profile 
  def admin_profile 
      @user = User.find_by_id(session[:user_id])
  end #  def profile 
  
#to get admoin details from user table and to display for edit profile 
  def profile 
      @user = User.find_by_id(session[:user_id])
  end #  def profile 

#to update admin profile
  def updated_profile
    
      @user = User.find_by_id(session[:user_id])
   
      @user.name = params[:user][:name]
      @user.email = params[:user][:email]
      @user.address = params[:user][:address]
      @user.city = params[:user][:city]
      @user.pincode = params[:user][:pincode]
      @user.state = params[:user][:state]
      @user.contact_no = params[:user][:contact_no]

      if @user.save
          flash[:notice] = "Changes Updated Successfully"
          redirect_to :action => "admin_profile"
      else
          flash[:notice] = "Changes are not updated"
      end # if @user.save

  end #def updated_profile

#to change password
  def update_password
       @user = User.find_by_id(session[:user_id])

       if (@user.password == params[:old_password]) and (params[:password] == params[:password_confirmation])

           @user.password = params[:password]
           if @user.save
              flash[:notice] = "Password Updated Successfully"
              redirect_to :action => "home"
           else
              flash[:notice] = "Password not Updated Successfully"
           end # if @user.save
 
       else
           flash[:notice] = "Password doesn't match correctly"
           redirect_to :action => "change_password"

       end #if (@user.password == params[:old_password])

  end   #def update_password

#to display the card details by search process
  def search_result

       @search = params[:search]
       @status = params[:status]

       if @search.blank?
               flash[:notice] = "choose your choice as ordinary/speed post"
               redirect_to :action => "cards"
       else
	       if (@search == "ordinary") and (@status == "all")
		   @cards = CardDetail.find_all_by_card_type(@search) 
		   flash[:notice] = "No Cards Available" if @cards.blank?
		
	       elsif (@search == "ordinary") and (@status == "Received")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)
		   flash[:notice] = "No Cards Available" if @cards.blank?

	       elsif (@search == "ordinary") and (@status == "Inprogress")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)
		   flash[:notice] = "No Cards Available" if @cards.blank?

	       elsif (@search == "ordinary") and (@status == "Delivered")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)
	     
	       elsif (@search == "ordinary") and (@status == "Non-Delivered")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)

	       elsif (@search == "speed") and (@status == "all")
		   @cards = CardDetail.find_all_by_card_type(@search) 
		   flash[:notice] = "No Cards Available" if @cards.blank?
		
	       elsif (@search == "speed") and (@status == "Received")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)
		   flash[:notice] = "No Cards Available" if @cards.blank?

	       elsif (@search == "speed") and (@status == "Inprogress")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)
		   flash[:notice] = "No Cards Available" if @cards.blank?

	       elsif (@search == "speed") and (@status == "Delivered")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)
	     
	       elsif (@search == "speed") and (@status == "Non-Delivered")
		   @cards = CardDetail.find_all_by_card_type_and_status(@search,@status)    

	       end # if params[:search] == "ordinary"
 
        end #if @search.blank?
  end #def search_result

#to add new cards with sender and receiver details and with corresponding type
  def add_new
      if params[:card][:weight].blank?
        @weight = 0
      else
        @weight = params[:card][:weight].to_i
      end
      @rate = Rate.find(1)
      @card = CardDetail.new(params[:card]) 
      @card.weight = @weight
      @card.card_type = params[:type]
      @random = Random.rand(10000000)
      @card.card_id = "IPO-#{@random}"
      @card.status = "Received"

       if params[:type] == "ordinary"
           @cost = @rate.ordinary_post
           @card.rate = @rate.ordinary_post
           @card.amount = @rate.ordinary_post
           @card.weight = 0
       else
           @cost = @rate.speed_post
           @card.rate = @rate.speed_post 
           @card.amount =  @card.rate * @weight         
       end #if params[:type] == "ordinary"
    
 
       if @card.save
          flash[:notice] = "New Entry saved Successfully"
          @card_id = @card.card_id
          redirect_to :action => "entry_view" , :id => @card_id
      else
          flash[:notice] = "New Entry not saved "
      end # if @user.save
  end # def add_new

#to view cards and their details for update status
  def update_view
      
       @cards = CardDetail.find_all_by_card_type(params[:search])
       session[:card_type] = params[:search]

  end # def update_view

#to read card details with corresponding card id 
  def status_change
       @card = CardDetail.find_by_card_id(params[:id]) 
  end #def status_change

#to change status of the card with corresponding card id
  def after_updation
     
       @card = CardDetail.find_by_card_id(session[:card_id])     
       @card.status = params[:status]
       @card.save
  end #def after_updation
 
#to get details of rate 
 
  def edit_rates
       @rate = Rate.find_by_id(1)
  end #def edit_rates

#to edit card rates
  def updated_rates
       @rate = Rate.find_by_id(1)
       @rate.ordinary_post = params[:rate][:ordinary_post]
       @rate.speed_post = params[:rate][:speed_post]
 
       if @rate.save
          flash[:notice] = " Rates are updated successfully"
          redirect_to :action => "fix_rates" 
       else
          flash[:notice] = " Rates are not updated"
       end #if @rate.save

  end   # def updated_rates

# to display status for sender by validating card id and contact no
  def card_status
      
      if params[:sender_phone_no].blank? or params[:card_id].blank?
         flash[:notice] = "Card ID and Contact No should not be blank"
         redirect_to :action => "view_status"
      else
         @card = CardDetail.find_by_card_id(params[:card_id])
         @phone_no = params[:sender_phone_no].to_i
      
	      if @card.blank?
		 flash[:notice] = "Invalid Card ID"
		 redirect_to :action => "view_status"
	      
	      elsif (@card.sender_phone_no == @phone_no)
		 @card = CardDetail.find_by_card_id(params[:card_id]) 
		 flash[:notice] = "your card status"

	      elsif (@card.sender_phone_no != @phone_no)
		 flash[:notice] = "Invalid Card ID or Contact No"
		 redirect_to :action => "view_status" 

	      end #if card.blank?

      end #if params[:sender_phone_no].blank? or params[:card_id].blank?
 
  end #def card_status

#to get and to display card details for editing
  def edit_card_details

      if params[:card_id].blank?
        flash[:notice] = "Card Id should not be blank"
        redirect_to :action => "edit_card" 
      else
        @card = CardDetail.find_by_card_id(params[:card_id])
        if @card.blank?
            flash[:notice] = "Invalid Card Id"
            redirect_to :action => "edit_card"
        else
            flash[:notice] = "Card Details"    
        end #if @card.blank?
      end #if params[:card_id].blank?

  end  #def edit_card_details

#to edit card details
  def existing_card
       @rate = Rate.find(1)
       @card = CardDetail.find_by_card_id(session[:card_no])
       @card.sender_name = params[:card][:sender_name]
       @card.sender_address = params[:card][:sender_address]
       @card.sender_city = params[:card][:sender_city]
       @card.sender_pincode = params[:card][:sender_pincode]
       @card.sender_state = params[:card][:sender_state]
       @card.sender_phone_no = params[:card][:sender_phone_no]
       @card.sender_email = params[:card][:sender_email]
       @card.receiver_name = params[:card][:receiver_name]
       @card.receiver_address = params[:card][:receiver_address]
       @card.receiver_city = params[:card][:receiver_city]
       @card.receiver_pincode = params[:card][:receiver_pincode]
       @card.receiver_state = params[:card][:receiver_state]
       @card.receiver_phone_no = params[:card][:receiver_phone_no]
       @card.card_type = params[:type]
       @card.status = "Received"
        
       if params[:type] == "ordinary"
           @cost = @rate.ordinary_post
           @card.rate = @rate.ordinary_post
           @card.amount = @rate.ordinary_post
           @card.weight = 0
       else
           @cost = @rate.speed_post
           @card.weight = params[:card][:weight]
           @card.rate = @rate.speed_post 
           @card.amount =  @card.rate * @card.weight          
       end #if params[:type] == "ordinary"

       if @card.save
           flash[:notice] = "Changes Saved Successfully"
           redirect_to :action => "entry" , :id => session[:card_no]
       else
           flash[:notice] = "Changes not Saved"
       end # if @card.save
 
  end  #def existing_card
  
#to display admin password by validating admin email and contact no
  def password
       @contact_no = params[:contact_no].to_i
       if params[:email].blank? or params[:contact_no].blank?
         flash[:notice] = "Email and Contact No should not be blank"
         redirect_to :action => "forget_password"    
       else 
         @user = User.find_by_email(params[:email])
         if @user.blank?
             flash[:notice] = "Invalid Email or Contact No"
             redirect_to :action => "forget_password" 
         elsif (@user.contact_no == @contact_no)
             flash[:notice] = "your password is '#{@user.password}'"
             redirect_to :controller => "sessions",:action => "new"
         else 
             flash[:notice] = "Invalid Contact No"
             redirect_to :action => "forget_password" 
         end # if @user.blank?

       end # if params[:email].blank? or params[:contact_no]

  end #def password

end #class AdminController < ApplicationController

