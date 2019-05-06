class UserContactsController < BaseController

  def index
    @user_contacts = UserContact.all.order(created_at: :desc).page(params[:page]).per(50)
  end 

  def create
    @user_contact = UserContact.new(resource_params)
    if @user_contact.save 
      redirect_to contact_path, :flash => { :success => "Your Request has been Created!" }
    else 
      redirect_to contact_path, :flash => { :error => "Your Request has errors ("+ @user_contact.errors.full_messages.join(",") +") check before continue" }
    end 
  end

end
