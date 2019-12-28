class PlayListsController < ApplicationController
  include UsersHelper
  def show
    @user = current_user
  end
  def new
    @playlist = Playlist.new
  end
  def create
    @user = current_user
    @user.playlists.create(name:params[:playlist][:name])
    render 'show'
  end
end
