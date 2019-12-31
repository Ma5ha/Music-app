class ListsController < ApplicationController
    def create
        Container.create(song_id: params[:song_id], playlist_id: params[:playlist_id])
    end
    def destroy
    end
end
