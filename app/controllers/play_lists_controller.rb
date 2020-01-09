class PlayListsController < ApplicationController
  
  def show
    #raise params.inspect
    @user = current_user
    @playlist= Playlist.find_by(id:params[:id])
  end
  def new
    @playlist = Playlist.new
  end
  def create
    @user = current_user
    @user.playlists.create(name:params[:playlist][:name])
    flash[:playlist]= "lisr is created"
    
  end
  def destroy
    
    @playlist =Playlist.find_by(id: params[:id])
    @playlist.destroy
    redirect_to controller: "users", action: "show"
  end
end
