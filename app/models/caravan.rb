class Caravan < ApplicationRecord
  belongs_to :user

  validates :brand, :model, :year, :capacity, :gas_type, :description, presence: true
  end
