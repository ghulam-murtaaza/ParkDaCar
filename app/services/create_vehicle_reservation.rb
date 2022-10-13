# frozen_string_literal: true

class CreateVehicleReservation
  def initialize(paking_spot_params, vehicle_owner_params, vehicle_params, current_user)
    @paking_spot_info = paking_spot_params
    @vehicle_owner_info = vehicle_owner_params
    @vehicle_info = vehicle_params
    @current_user = current_user
  end

  def create_vehicle_reservation
    vehicle_owner = VehicleOwner.find_by(email: @vehicle_owner_info[:email]) || VehicleOwner.create(@vehicle_owner_info)
    vehicle = vehicle_owner.vehicles.find_by(vin: @vehicle_info[:vin]) || vehicle_owner.vehicles.create(@vehicle_info)
    reservation = Reservation.create!(check_in: Time.zone.now, vehicle_id: vehicle.id, user_id: @current_user,
                                      parking_spot_id: @paking_spot_info[:parking_slot])
  end
end
