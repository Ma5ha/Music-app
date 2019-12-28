class UsersController < ApplicationController
  include UsersHelper
  def new
    @user = User.new
  end

  def show
    @user = User.first
    @playlist= @user.playlists.first
    
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

end
