class Item < ApplicationRecord
 
  has_one :order
  belongs_to :envelope
  belongs_to :paper
  belongs_to :font

#  has_one_attached :image
#  validates :image, presence: true

end
