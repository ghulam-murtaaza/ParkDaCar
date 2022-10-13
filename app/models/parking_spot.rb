# frozen_string_literal: true

class ParkingSpot < ApplicationRecord
  belongs_to :facility
  has_many :reservations

  validates :name, uniqueness: { scope: :facility_id }
end
