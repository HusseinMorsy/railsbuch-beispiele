class Flight < ActiveRecord::Base
  has_many :bookings
  has_many :passengers, :through => :bookings
end
