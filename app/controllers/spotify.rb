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
=begin
@song= Song.all
@song.each do |s|
    if s.name.match("Mir")
        p s.name
    end

end
=end
search= "mitch"

@song = Song.where("artrist like ?", "%#{search}%")

@song.each do |s|

p s.name
end