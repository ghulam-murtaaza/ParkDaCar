# frozen_string_literal: true

module ReservationsHelper
  def reservation_status(reservation)
    status = case reservation.status
             when 'checked_in'
               'Checked In'
             when 'checked_out'
               'Checked Out'
             end
  end
end
