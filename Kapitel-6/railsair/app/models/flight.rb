class Flight < ActiveRecord::Base
  has_many :bookings
end
