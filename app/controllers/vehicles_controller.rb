# frozen_string_literal: true

class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[show edit update destroy]

  def vehicle_information
    return {} if params[:vin].blank?

    @vehicle = Vehicle.find_by(vin: params[:vin])
    @vehicle_info = if @vehicle.nil?
                      FetchVehicleInformation.new(params[:vin]).vehicle_information
                    else
                      { vin: @vehicle.vin, model_year: @vehicle.model_year, make: @vehicle.make, model: @vehicle.model,
                        trim: @vehicle.trim }
                    end
  end
end
