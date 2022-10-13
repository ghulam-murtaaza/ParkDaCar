# frozen_string_literal: true

class AddVehicleToVehicleOwners < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicles, :vehicle_owner, foreign_key: true
  end
end
