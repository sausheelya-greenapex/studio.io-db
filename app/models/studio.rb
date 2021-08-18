class Studio < ApplicationRecord
  belongs_to :user
  has_one :minimum_bookings, :dependent => :destroy
  has_one :studio_occupacy, :dependent => :destroy
  has_one :studio_type, :dependent => :destroy
  has_one :advance_booking_request, :dependent => :destroy
  has_one :feature, :dependent => :destroy
  has_one :studio_rule, :dependent => :destroy
  has_one :location, :dependent => :destroy
  has_one :price, :dependent => :destroy
  has_one :studio_picture, :dependent => :destroy
  has_many :selected_studio_types, through: :studio_type, :dependent => :destroy
end
