class UsersController < ApplicationController
  before_action :require_login 
  
  def new
    @user = User.new
  end

  def show
    
    @user = current_user
    
    
  end
  def create
    user=User.new(strong_params)
    if user.save!
      login(user)
      
      render "show"
      flash.now[:message] = "Welcome  to music app!"
    else
      render "new"
    end
  
  end
  


private
def strong_params
  params.require(:user).permit(:name,:email,:password,:password_confirmation)
end
def require_login
  unless logged_in?
    flash[:error] = "You must be logged in to access this section"
    redirect_to login_path
  end
end
end
