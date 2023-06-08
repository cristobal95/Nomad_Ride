class AddStatusToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :status, :boolean, default: false
  end
end
