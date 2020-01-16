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
    flash[:playlist] = "Your playlist is created"
      respond_to do |format|
        format.html
        format.js
      end
    
  end
  def destroy
    
    @playlist =Playlist.find_by(id: params[:id])
    @playlist.destroy

      respond_to do |format|   
        format.html { redirect_to playdelete_url }   
        format.json { head :no_content }   
        format.js   { render :layout => false }   
    end
  end

end
