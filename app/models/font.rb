class Font < ApplicationRecord

    has_many :items
    has_one_attached :image
    validates :image, presence: true

    FONT_FAMILY = ["Kawaii", "Beauty", "Kuse"]
    FONT_NAMES = self.pluck(:name)
    unless FONT_NAMES.nil?
        array = [FONT_NAMES, FONT_FAMILY].transpose
        FONTS = Hash[*array.flatten]
    end
end
