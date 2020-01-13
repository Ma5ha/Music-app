class SongsController < ApplicationController
    include UsersHelper
    def new

    end
    def find
        #raise params.inspect
        if params[:song]
            @song= Song.where("name like ?", "%#{params[:song][:name]}%")
            
            respond_to do |format|
                format.html
                format.js
            end
        else 
            @song = Song.all
        
        end

    end
    def create
        @song=Song.create(name:params[:song][:name],artrist:params[:song][:artrist],link:params[:song][:url])
        redirect_to controller: 'users', action: 'show'
        
    end 
    def index
        @user = current_user
        
        @songs=Song.all
        
    end
    private

end
