class Playlist < ApplicationRecord
    belongs_to :user
    has_many :container, dependent: :destroy

    has_many :songs , through: :container
end
