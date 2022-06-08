class Order < ApplicationRecord

  belongs_to :items
  belongs_to :customers

  has_one_attached :image
  validates :image, presence: true

  enum payment_method: { credit_card: 0, transfer: 1 }
end
