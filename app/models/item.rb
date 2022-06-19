class Item < ApplicationRecord

  has_one :order
  belongs_to :customer
  belongs_to :envelope
  belongs_to :paper
  belongs_to :font
  belongs_to :article


#  has_one_attached :image
#  validates :image, presence: true

end
