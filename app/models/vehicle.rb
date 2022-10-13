# frozen_string_literal: true

class Vehicle < ApplicationRecord
  has_many :reservations
  belongs_to :vehicle_owner

  validates :vin, uniqueness: { scope: :vehicle_owner_id }, presence: true
end
