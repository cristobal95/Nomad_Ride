class Caravan < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :brand, :model, :year, :capacity, :gas_type, :description, :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
