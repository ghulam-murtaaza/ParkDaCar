# frozen_string_literal: true

class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
