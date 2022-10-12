class CreateVehicleOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_owners do |t|
      t.string :name
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
