class SessionsController < ApplicationController
  include UsersHelper
  def new
    @user=User.new
  end
  def create
   
    @user=User.find_by(email:params[:user][:email])
    
      login(@user)
      
       redirect_to controller: "users", action: "show"
   
    
  end
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

