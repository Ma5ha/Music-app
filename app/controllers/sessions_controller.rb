class SessionsController < ApplicationController
  
  def new
    @user=User.new
  end
  def create
   
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
        login user
        params[:session][:remeber] == 1 ? remember(user) : forget(user)
      
        redirect_to controller: "users", action: "show"
      flash[:welcome] ="Welcome to music app  "
      else
        
        redirect_to login_path
        flash[:alert] = 'Invalid email/password combination'
      end
       
   
    
  end


  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  def con
    "yup"
  end
end

