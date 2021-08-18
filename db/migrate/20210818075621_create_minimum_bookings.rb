class CreateMinimumBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :minimum_bookings do |t|
      t.string :duration

      t.timestamps
    end
  end
end
