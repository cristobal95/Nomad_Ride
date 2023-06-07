class Caravan < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :brand, :model, :year, :capacity, :gas_type, :description, presence: true
  end
