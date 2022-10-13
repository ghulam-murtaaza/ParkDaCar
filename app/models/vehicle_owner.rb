# frozen_string_literal: true

class VehicleOwner < ApplicationRecord
  has_many :vehicles

  validates :email, presence: true, uniqueness: true
end
