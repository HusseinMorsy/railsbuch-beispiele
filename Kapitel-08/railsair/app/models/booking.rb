class Booking < ActiveRecord::Base
  belongs_to :flight
  belongs_to :passenger
end
