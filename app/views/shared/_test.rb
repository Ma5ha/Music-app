@user=User.first
@playlist=@user.playlists.all
@playlist.each do|playlist|
@song= playlist.songs.all
end
@song.each do|song|
song.name
end
