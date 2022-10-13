# frozen_string_literal: true

class FetchVehicleInformation
  def initialize(vehicle_no)
    @base_url = 'https://vpic.nhtsa.dot.gov/api/vehicles/decodevinvaluesextended/'
    @vehicle_no = vehicle_no
  end

  def vehicle_information
    url = "#{@base_url}#{@vehicle_no}?format=json"
    api_response = JSON.parse(RestClient.get(url))['Results'].last
    { vin: api_response['VIN'], model_year: api_response['ModelYear'], make: api_response['Make'],
      model: api_response['Model'], trim: api_response['Trim'] }
  end
end
