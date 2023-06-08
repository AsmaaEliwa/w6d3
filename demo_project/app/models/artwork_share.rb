class ArtworkShare < ApplicationRecord
  validates :artwork_id, :viewer_id, presence: true
  validates :artwork_id, uniqueness: { scope: :viewer_id }

  belongs_to :viewer,
    foreign_key: :viewer_id,
    primary_key: :id,
    class_name: 'User',
    dependent: :destroy,
    inverse_of: :shared_artworks


  belongs_to :artwork,
    foreign_key: :artwork_id,
    primary_key: :id,
    class_name: 'Artwork',
    dependent: :destroy,
    inverse_of: :shared_artworks

  
end
