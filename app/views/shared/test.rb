
@song=Song.find_by(id: 6)
@playlist=Playlist.first
#Container.create(song_id: @song.id, playlist_id: @playlist.id)
puts @playlist.songs.length





