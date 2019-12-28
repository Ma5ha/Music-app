class Playlist < ApplicationRecord
    belongs_to :user
    has_many :container

    has_many :songs , through: :container
end
