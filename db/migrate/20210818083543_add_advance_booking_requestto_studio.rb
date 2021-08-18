class AddAdvanceBookingRequesttoStudio < ActiveRecord::Migration[6.1]
  def change
    add_reference :studios, :advance_booking_request, index: true
  end
end
