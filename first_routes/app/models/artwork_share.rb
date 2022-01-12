class ArtworkShare < ApplicationRecord
    validates :viewer_id, uniqueness: { scope: :artwork_id }

 

end