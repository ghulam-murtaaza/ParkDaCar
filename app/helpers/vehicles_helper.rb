# frozen_string_literal: true

module VehiclesHelper
  def parking_facilities
    Facility.all
  end

  def parking_spots
    ParkingSpot.all
  end
end
