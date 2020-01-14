class SongsController < ApplicationController
    include UsersHelper
    def new

    end
    def find
        #raise params.inspec
        
        
            @song= Song.where("name like ?", "%#{params[:song][:name]}%")
            
            respond_to do |format|
                format.html
                format.js
            end
            
        

    end
    def create
        @song=Song.create(name:params[:song][:name],artrist:params[:song][:artrist],link:params[:song][:url])
        redirect_to controller: 'users', action: 'show'
        
    end 
    def index
        @user = current_user
        if params[:song]
            @songs= Song.where("name like ?", "%#{params[:song][:name]}%")
            
            respond_to do |format|
                format.html
                format.js
            end
        else
            @songs= Song.all
        end
    end
    private

end
