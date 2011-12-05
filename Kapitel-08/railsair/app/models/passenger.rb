class Passenger < ActiveRecord::Base
  has_one :bonus_card, :dependent => :destroy
  has_many :bookings
  has_many :flights, :through => :bookings
end
