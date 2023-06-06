class Caravan < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :brand, :model, :year, :capacity, :gas_type, :description, presence: true
end
