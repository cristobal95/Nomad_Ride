class Caravan < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :brand, :model, :year, :capacity, :gas_type, :description, presence: true
end
