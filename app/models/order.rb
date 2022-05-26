class Order < ApplicationRecord

  belongs_to :items
  belongs_to :customers

  has_one_attached :image
  validates :image, presence: true

end
