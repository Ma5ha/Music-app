module SongsHelper

    def songs_list(song)
        song.each do |s|
          s.name
        end
    end
  
end
