require 'rspotify'

RSpotify.authenticate("d571e4fbe871458994520ef653c4e985", "aa03ad4a6ec144ed9f91607d599f82d4")
me = RSpotify::User.find('Mladen')

#[2,3].each do |id|
#p id
#user= User.find_by(id:id).destroy
#end

@user=User.first
@playlist = @user.playlists
@FirPlay = @playlist.first.songs
@song= Container.find_by(playlist_id: 1, song_id: 6)
@song_one.each do |s|

    p s
    #s.destroy
    p s

end