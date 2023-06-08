class Artwork < ApplicationRecord
    validates :artist_id, :title,:image_url ,presence:true
    validates :image_url , uniqueness:true
    validates :artist_id, uniqueness: { scope: :title }

belongs_to :artist,
foreign_key: :artist_id,
primary_key: :id,
class_name: 'User'



end
