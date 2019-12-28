class Song < ApplicationRecord
    has_many :container
    has_many :playlists, through: :container
end
