class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true


  has_many :orders
  has_many :items

  # def active_for_authentication?
  #   super && (is_active == true)
  # end

end
