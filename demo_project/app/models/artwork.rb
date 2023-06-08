class Artwork < ApplicationRecord
    validates :artist_id, :title,:image_url ,presence:true
    validates :image_url , uniqueness:true
    validates :artist_id, uniqueness: { scope: :title }

    belongs_to :artist,
        foreign_key: :artist_id,
        primary_key: :id,
        class_name: 'User'

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer,
        dependent: :destroy

        has_many :shared_artworks,
        through: :artwork_shares,
        source: :artwork,
        inverse_of: :artwork,
        dependent: :destroy

        has_many :comments,
        foreign_key: :artwork_id,
        class_name: 'Comment',
        dependent: :destroy
end
