class CreateAdvanceBookingRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :advance_booking_requests do |t|
      t.string :request

      t.timestamps
    end
  end
end
