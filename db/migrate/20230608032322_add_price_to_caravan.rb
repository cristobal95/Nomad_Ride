class AddPriceToCaravan < ActiveRecord::Migration[7.0]
  def change
    add_column :caravans, :day_price, :integer
  end
end
