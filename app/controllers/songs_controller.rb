class SongsController < ApplicationController
    include UsersHelper
    def new
    end
    def create
        @song=Song.create(name:params[:song][:name],artrist:params[:song][:artrist],link:params[:song][:url])
        redirect_to controller: 'users', action: 'show'
        
    end 
    def index
        @user = current_user
        
        @songs=Song.all
        
    end
end
