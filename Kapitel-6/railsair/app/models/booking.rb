class Booking < ActiveRecord::Base
  validates :name, :email, presence: true
end
