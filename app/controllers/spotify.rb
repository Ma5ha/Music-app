require 'rspotify'

RSpotify.authenticate("d571e4fbe871458994520ef653c4e985", "aa03ad4a6ec144ed9f91607d599f82d4")
me = RSpotify::User.find('Mladen')

#[2,3].each do |id|
#p id
#user= User.find_by(id:id).destroy
#end


=begin
@song= Song.all
@song.each do |s|
    if s.name.match("Mir")
        p s.name
    end

end
=end



 
 


    def popular_songs(songs)
        
        popular=songs.sort_by {|song| song.playlists.length}
        #songs.each do |s|
        first_song = popular[-1]
        second_song = popular[-2]
        thrd_song = popular[-3]
        forth_song =popular[-4]
    
        
    
    end
    

popular_songs(songs=Song.all)

popular_songs.call(first_song)