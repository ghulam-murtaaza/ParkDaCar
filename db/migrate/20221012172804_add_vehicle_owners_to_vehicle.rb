class AddVehicleOwnersToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicle_owners, :vehicle, foreign_key: true
  end
end
