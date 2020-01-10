class ListsController < ApplicationController
    def create
        Container.create(song_id: params[:song_id], playlist_id: params[:playlist_id])
        
    end
    def destroy
        song = Container.find_by(playlist_id: params[:playlist_id], song_id: params[:song_id]).destroy
        
        redirect_to show_list_path(id: params[:playlist_id])

    end
end
