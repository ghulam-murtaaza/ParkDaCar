class ParkingSpot < ApplicationRecord
  belongs_to :facility
  has_many :reservations
end
