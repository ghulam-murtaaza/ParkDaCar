# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.integer :status, default: 0
      t.references :vehicle, foreign_key: true
      t.references :user, foreign_key: true
      t.references :parking_spot, foreign_key: true

      t.timestamps
    end
  end
end
