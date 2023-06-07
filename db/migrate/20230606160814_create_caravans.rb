class CreateCaravans < ActiveRecord::Migration[7.0]
  def change
    create_table :caravans do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :capacity
      t.string :gas_type
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
