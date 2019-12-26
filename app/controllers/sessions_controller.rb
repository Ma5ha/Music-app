class SessionsController < ApplicationController
  include UsersHelper
  def new
    @user=User.new
  end
  def create
    @user=User.find_by(email:params[:user][:email])
    if @user.name && user.authenticate(params[user][:password])
      login(@user)
      remeber(@user)
      redirect_to controller: "users", action: 'show'
    else 
      flash[:danger] = "Wrong email/password, please try again, or sign up if u have profile!"
      render "new"
    end
  end
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

