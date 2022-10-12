class Vehicle < ApplicationRecord
  belongs_to :vehicle_owner
  has_many :reservations
end
