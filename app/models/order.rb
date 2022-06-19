class Order < ApplicationRecord

  belongs_to :item
  belongs_to :customer

  has_one_attached :image

  validates :postal_code, presence: true
  validates :address, presence: true
  validates :name , presence: true
  validates :sender_postal_code, presence: true
  validates :sender_address, presence: true
  validates :sender, presence: true

  #enum payment_method: { credit_card: 0, transfer: 1 }
end
