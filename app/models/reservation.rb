class Reservation < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  belongs_to :parking_spot
end
