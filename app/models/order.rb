class Order < ApplicationRecord

  belongs_to :item
  belongs_to :customer

  has_one_attached :image

  #enum payment_method: { credit_card: 0, transfer: 1 }
end
