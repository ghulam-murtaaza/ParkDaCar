# frozen_string_literal: true

class ReservationsController < ApplicationController

  def create
    CreateVehicleReservation.new(paking_spot_params, vehicle_owner_params, vehicle_params,
                                  current_user).create_vehicle_reservation
    @checkins_reservations = Reservation.checked_ins
  end

  def index
    @checkins_reservations= if params[:filter] == 'all-reservations'
      Reservation.all
    elsif params[:filter] == 'all-check-in'
      Reservation.checked_ins
    else
      []
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(check_out: Time.now, status: 1)
    @checkins_reservations = Reservation.checked_ins
  end

  private

  def paking_spot_params
    params.require(:reservation).permit(:parking_slot)
  end

  def vehicle_params
    params.require(:vehicle).permit(:vin, :model_year, :make, :model, :trim)
  end

  def vehicle_owner_params
    params.require(:vehicle_owner).permit(:name, :email, :address)
  end
end
