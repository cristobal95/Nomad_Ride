class Caravan < ApplicationRecord
  belongs_to :user
  has_many :reservations
  validates :brand, :model, :year, :capacity, :gas_type, :description, presence: true
  end
