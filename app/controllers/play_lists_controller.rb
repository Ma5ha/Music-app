class PlayListsController < ApplicationController
  def show
    @p=Playlist.all
  end
  def new
    @playlist = Playlist.new
  end
  def create
    @playlist = Playlist.create(name:params[:playlist][:name])
    render 'show'
  end
end
