# frozen_string_literal: true

class Reservation < ApplicationRecord
  enum :status, %i[checked_in checked_out]

  belongs_to :vehicle
  belongs_to :user, optional: true
  belongs_to :parking_spot

  scope :checked_ins, -> { where(status: 0) }
end
