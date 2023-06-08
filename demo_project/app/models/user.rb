class User < ApplicationRecord
    validates :username, presence:true, uniqueness: true


    has_many :artworks,
    foreign_key: :artist_id,
    primary_key: :id,
    class_name: 'Artwork',
    dependent: :destroy

    has_many :shared_artworks,
        through: :artwork_shares,
        source: :artwork,
        dependent: :destroy
end
