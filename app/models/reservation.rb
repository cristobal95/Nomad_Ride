class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :caravan

  validates :start_date, presence: true

  before_save :date_verification

  def date_verification
    if start_date.present? && start_date < Date.current
      errors.add(:start_date, "no puede ser anterior a la fecha actual")
      throw(:abort)
    end
  end
end
