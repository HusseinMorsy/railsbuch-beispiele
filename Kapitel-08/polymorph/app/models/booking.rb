class Booking < ActiveRecord::Base
  belongs_to :voyage, :polymorphic => true
end
