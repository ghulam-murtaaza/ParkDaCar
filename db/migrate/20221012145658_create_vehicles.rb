class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :vin, unique: true, null: false
      t.string :model_year
      t.string :make
      t.string :model
      t.string :trim

      t.timestamps
    end
  end
end
