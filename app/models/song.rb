class Song < ApplicationRecord
    has_many :container
    has_many :playlists, through: :container
    validates_uniqueness_of :name
    validates_presence_of :name , :artrist, :link
    
    def playlist_length
        self.playlists.length
    end

    def j
        p "masha"
    end
end
