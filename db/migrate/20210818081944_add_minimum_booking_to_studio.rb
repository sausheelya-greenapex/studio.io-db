class AddMinimumBookingToStudio < ActiveRecord::Migration[6.1]
  def change
    add_reference :studios, :minimum_booking, index: true
    add_reference :studios, :studio_occupacies, index: true
     add_reference :studios, :studio_type, index: true
  end
end
