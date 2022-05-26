class Item < ApplicationRecord

  has_one :orders
  belongs_to :envelopes
  belongs_to :papers
  belongs_to :fonts

  has_one_attached :image
  validates :image, presence: true

end
