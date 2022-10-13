# frozen_string_literal: true

class Facility < ApplicationRecord
  has_many :parking_spots

  validates :name, uniqueness: { scope: :address }
end
