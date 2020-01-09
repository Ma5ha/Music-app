class Song < ApplicationRecord
    has_many :container
    has_many :playlists, through: :container
    validates_uniqueness_of :name, :album
end
