class Flight < ActiveRecord::Base
  has_many :bookings, :as => :voyage
end
