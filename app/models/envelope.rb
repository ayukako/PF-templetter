class Envelope < ApplicationRecord

    has_many :items
    has_one_attached :image
    validates :image, presence: true

end
